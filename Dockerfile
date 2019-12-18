FROM ubuntu:latest

RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:jon-hedgerows/get-iplayer -y && \
    apt install htop get-iplayer -y

RUN apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD tail -f /dev/null
