
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int sfp_phy_avail; scalar_t__ sfp_base; int sfp_changed; } ;


 int MII_BMCR ;
 scalar_t__ XGBE_SFP_BASE_1000_T ;
 int xgbe_phy_i2c_mii_read (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_phy_sfp_external_phy(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 int ret;

 if (!phy_data->sfp_changed)
  return;

 phy_data->sfp_phy_avail = 0;

 if (phy_data->sfp_base != XGBE_SFP_BASE_1000_T)
  return;


 ret = xgbe_phy_i2c_mii_read(pdata, MII_BMCR);
 if (ret < 0)
  return;


 phy_data->sfp_phy_avail = 1;
}
