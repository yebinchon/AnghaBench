
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* write_ext_mii_regs ) (struct xgbe_prv_data*,int,int,int ) ;} ;
struct xgbe_prv_data {TYPE_1__ hw_if; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ phydev_mode; } ;


 int ENOTSUPP ;
 int MII_ADDR_C45 ;
 scalar_t__ XGBE_MDIO_MODE_CL22 ;
 scalar_t__ XGBE_MDIO_MODE_CL45 ;
 int stub1 (struct xgbe_prv_data*,int,int,int ) ;

__attribute__((used)) static int xgbe_phy_mdio_mii_write(struct xgbe_prv_data *pdata, int addr,
       int reg, u16 val)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 if (reg & MII_ADDR_C45) {
  if (phy_data->phydev_mode != XGBE_MDIO_MODE_CL45)
   return -ENOTSUPP;
 } else {
  if (phy_data->phydev_mode != XGBE_MDIO_MODE_CL22)
   return -ENOTSUPP;
 }

 return pdata->hw_if.write_ext_mii_regs(pdata, addr, reg, val);
}
