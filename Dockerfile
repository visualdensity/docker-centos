FROM centos:7.4.1708

RUN    yum update -y  \
    && yum install -y \
       vim-enhanced   \
       git            \
    && yum clean all

COPY ./conf/bashrc /root/.bashrc
COPY ./conf/vimrc  /root/.vimrc
