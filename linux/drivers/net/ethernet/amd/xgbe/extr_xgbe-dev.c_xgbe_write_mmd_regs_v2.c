
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int mdio_mmd; unsigned int xpcs_window_mask; unsigned int xpcs_window; int xpcs_lock; int xpcs_window_sel_reg; } ;


 int MII_ADDR_C45 ;
 int XPCS16_IOWRITE (struct xgbe_prv_data*,unsigned int,int) ;
 int XPCS32_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xgbe_write_mmd_regs_v2(struct xgbe_prv_data *pdata, int prtad,
       int mmd_reg, int mmd_data)
{
 unsigned long flags;
 unsigned int mmd_address, index, offset;

 if (mmd_reg & MII_ADDR_C45)
  mmd_address = mmd_reg & ~MII_ADDR_C45;
 else
  mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 mmd_address <<= 1;
 index = mmd_address & ~pdata->xpcs_window_mask;
 offset = pdata->xpcs_window + (mmd_address & pdata->xpcs_window_mask);

 spin_lock_irqsave(&pdata->xpcs_lock, flags);
 XPCS32_IOWRITE(pdata, pdata->xpcs_window_sel_reg, index);
 XPCS16_IOWRITE(pdata, offset, mmd_data);
 spin_unlock_irqrestore(&pdata->xpcs_lock, flags);
}
