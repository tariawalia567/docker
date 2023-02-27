FROM ubuntu:20.04

WORKDIR /home/
RUN apt -y update && apt -y install curl wget libcurl4 libssl-dev python3 python3-pip make cmake automake autoconf m4 build-essential git && git clone https://github.com/MatrixTM/MHDDoS.git && cd MH* && pip3 install -r requirements.txt

ENTRYPOINT [ "start.sh"]
