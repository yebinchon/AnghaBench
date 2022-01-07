
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* vdata; } ;
struct TYPE_2__ {int xpcs_access; } ;




 void xgbe_write_mmd_regs_v1 (struct xgbe_prv_data*,int,int,int) ;
 void xgbe_write_mmd_regs_v2 (struct xgbe_prv_data*,int,int,int) ;

__attribute__((used)) static void xgbe_write_mmd_regs(struct xgbe_prv_data *pdata, int prtad,
    int mmd_reg, int mmd_data)
{
 switch (pdata->vdata->xpcs_access) {
 case 129:
  return xgbe_write_mmd_regs_v1(pdata, prtad, mmd_reg, mmd_data);

 case 128:
 default:
  return xgbe_write_mmd_regs_v2(pdata, prtad, mmd_reg, mmd_data);
 }
}
