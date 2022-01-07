
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int EOPNOTSUPP ;

int bnxt_cfg_hw_sriov(struct bnxt *bp, int *num_vfs, bool reset)
{
 if (*num_vfs)
  return -EOPNOTSUPP;
 return 0;
}
