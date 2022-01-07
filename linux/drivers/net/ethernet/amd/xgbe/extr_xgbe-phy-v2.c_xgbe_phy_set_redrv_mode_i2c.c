
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int redrv_lane; } ;
typedef enum xgbe_phy_redrv_mode { ____Placeholder_xgbe_phy_redrv_mode } xgbe_phy_redrv_mode ;


 int XGBE_PHY_REDRV_MODE_REG ;
 int xgbe_phy_redrv_write (struct xgbe_prv_data*,unsigned int,int) ;

__attribute__((used)) static int xgbe_phy_set_redrv_mode_i2c(struct xgbe_prv_data *pdata,
           enum xgbe_phy_redrv_mode mode)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 unsigned int redrv_reg;
 int ret;


 redrv_reg = XGBE_PHY_REDRV_MODE_REG + (phy_data->redrv_lane * 0x1000);

 ret = xgbe_phy_redrv_write(pdata, redrv_reg, mode);

 return ret;
}
