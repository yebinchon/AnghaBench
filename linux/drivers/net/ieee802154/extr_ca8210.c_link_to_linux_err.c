
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EADDRINUSE ;
 int EAGAIN ;
 int EBADMSG ;
 int EBADSLT ;
 int EBUSY ;
 int EDQUOT ;
 int EFAULT ;
 int EINVAL ;
 int EKEYREJECTED ;
 int EMSGSIZE ;
 int ENETUNREACH ;
 int ENOBUFS ;
 int ENODATA ;
 int ENOKEY ;
 int ENXIO ;
 int EPROTO ;
 int EREMOTEIO ;
 int EROFS ;
 int ETIME ;
__attribute__((used)) static int link_to_linux_err(int link_status)
{
 if (link_status < 0) {

  return link_status;
 }
 switch (link_status) {
 case 136:
 case 138:
  return 0;
 case 155:
  return -EKEYREJECTED;
 case 154:
 case 128:
 case 158:
  return -EACCES;
 case 160:
 case 147:
 case 146:
  return -ENETUNREACH;
 case 159:
 case 131:
 case 137:
  return -EBUSY;
 case 157:
 case 142:
  return -EAGAIN;
 case 156:
  return -EMSGSIZE;
 case 152:
 case 140:
  return -EBADSLT;
 case 151:
  return -EBADMSG;
 case 149:
 case 129:
 case 143:
 case 150:
  return -EINVAL;
 case 145:
  return -ENODATA;
 case 144:
  return -EFAULT;
 case 141:
  return -EADDRINUSE;
 case 133:
  return -ETIME;
 case 132:
  return -ENOBUFS;
 case 130:
  return -ENOKEY;
 case 153:
  return -ENXIO;
 case 134:
 case 135:
  return -EREMOTEIO;
 case 148:
  return -EDQUOT;
 case 139:
  return -EROFS;
 default:
  return -EPROTO;
 }
}
