
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 int EOPNOTSUPP ;
__attribute__((used)) static int bnxt_hwrm_to_stderr(u32 hwrm_err)
{
 switch (hwrm_err) {
 case 130:
  return 0;
 case 132:
  return -EACCES;
 case 131:
  return -ENOSPC;
 case 134:
 case 135:
 case 136:
 case 128:
 case 129:
  return -EINVAL;
 case 133:
  return -ENOMEM;
 case 137:
  return -EAGAIN;
 case 138:
  return -EOPNOTSUPP;
 default:
  return -EIO;
 }
}
