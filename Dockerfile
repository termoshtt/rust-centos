FROM centos:7
RUN yum install -y \
  boost-devel \
  file \
  gcc \
  gcc-c++ \
  kernel-devel \
  make \
  rsync \
  ruby \
  subversion \
  unzip \
  wget \
  && rm -rf /var/cache/yum/* \
  && yum clean all
RUN wget -q https://cmake.org/files/v3.11/cmake-3.11.1-Linux-x86_64.tar.gz \
  && tar xf cmake-3.11.1-Linux-x86_64.tar.gz \
  && cp -r ./cmake-3.11.1-Linux-x86_64/* /usr/ \
  && rm -rf ./cmake-3.11.1-Linux-x86_64*
