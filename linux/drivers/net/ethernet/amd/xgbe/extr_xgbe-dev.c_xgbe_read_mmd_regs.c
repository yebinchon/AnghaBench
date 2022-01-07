
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* vdata; } ;
struct TYPE_2__ {int xpcs_access; } ;




 int xgbe_read_mmd_regs_v1 (struct xgbe_prv_data*,int,int) ;
 int xgbe_read_mmd_regs_v2 (struct xgbe_prv_data*,int,int) ;

__attribute__((used)) static int xgbe_read_mmd_regs(struct xgbe_prv_data *pdata, int prtad,
         int mmd_reg)
{
 switch (pdata->vdata->xpcs_access) {
 case 129:
  return xgbe_read_mmd_regs_v1(pdata, prtad, mmd_reg);

 case 128:
 default:
  return xgbe_read_mmd_regs_v2(pdata, prtad, mmd_reg);
 }
}
