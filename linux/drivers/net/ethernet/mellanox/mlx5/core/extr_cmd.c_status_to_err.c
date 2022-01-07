
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EBADR ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOMSG ;
__attribute__((used)) static int status_to_err(u8 status)
{
 switch (status) {
 case 134:
 case 128:
  return 0;
 case 130:
 case 129:
  return -EBADR;
 case 139:
 case 132:
 case 135:
  return -EFAULT;
 case 136:
 case 133:
 case 138:
 case 131:
  return -ENOMSG;
 case 137:
  return -EIO;
 default:
  return -EINVAL;
 }
}
