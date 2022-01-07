
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ionic_status_code { ____Placeholder_ionic_status_code } ionic_status_code ;


 int EAGAIN ;
 int EBUSY ;
 int EEXIST ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int EPERM ;
 int ERANGE ;
__attribute__((used)) static int ionic_error_to_errno(enum ionic_status_code code)
{
 switch (code) {
 case 128:
  return 0;
 case 129:
 case 133:
 case 134:
 case 141:
  return -EINVAL;
 case 135:
  return -EPERM;
 case 139:
  return -ENOENT;
 case 146:
  return -EAGAIN;
 case 138:
  return -ENOMEM;
 case 143:
  return -EFAULT;
 case 145:
  return -EBUSY;
 case 144:
  return -EEXIST;
 case 137:
  return -ENOSPC;
 case 132:
  return -ERANGE;
 case 148:
  return -EFAULT;
 case 136:
 case 142:
 case 147:
 case 130:
 case 131:
 case 140:
 default:
  return -EIO;
 }
}
