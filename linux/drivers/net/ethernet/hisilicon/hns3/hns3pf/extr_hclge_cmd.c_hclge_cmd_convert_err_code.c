
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EBADR ;
 int EINVAL ;
 int EIO ;
 int ENOLINK ;
 int ENOSR ;
 int ENOTBLK ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int EPERM ;
 int ERANGE ;
 int ETIME ;
 int EXFULL ;
__attribute__((used)) static int hclge_cmd_convert_err_code(u16 desc_ret)
{
 switch (desc_ret) {
 case 139:
  return 0;
 case 134:
  return -EPERM;
 case 135:
  return -EOPNOTSUPP;
 case 132:
  return -EXFULL;
 case 136:
  return -ENOSR;
 case 128:
  return -ENOTBLK;
 case 133:
  return -EINVAL;
 case 130:
  return -ERANGE;
 case 129:
  return -ETIME;
 case 138:
  return -ENOLINK;
 case 131:
  return -ENXIO;
 case 137:
  return -EBADR;
 default:
  return -EIO;
 }
}
