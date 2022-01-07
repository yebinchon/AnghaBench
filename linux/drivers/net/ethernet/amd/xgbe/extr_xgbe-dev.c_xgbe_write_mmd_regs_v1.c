
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int mdio_mmd; int xpcs_lock; } ;


 int MII_ADDR_C45 ;
 unsigned int PCS_V1_WINDOW_SELECT ;
 int XPCS32_IOWRITE (struct xgbe_prv_data*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xgbe_write_mmd_regs_v1(struct xgbe_prv_data *pdata, int prtad,
       int mmd_reg, int mmd_data)
{
 unsigned int mmd_address;
 unsigned long flags;

 if (mmd_reg & MII_ADDR_C45)
  mmd_address = mmd_reg & ~MII_ADDR_C45;
 else
  mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 spin_lock_irqsave(&pdata->xpcs_lock, flags);
 XPCS32_IOWRITE(pdata, PCS_V1_WINDOW_SELECT, mmd_address >> 8);
 XPCS32_IOWRITE(pdata, (mmd_address & 0xff) << 2, mmd_data);
 spin_unlock_irqrestore(&pdata->xpcs_lock, flags);
}
