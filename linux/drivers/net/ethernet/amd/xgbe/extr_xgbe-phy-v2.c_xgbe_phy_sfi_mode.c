
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ sfp_cable; int sfp_cable_len; int cur_mode; } ;


 int XGBE_MODE_SFI ;
 scalar_t__ XGBE_SFP_CABLE_PASSIVE ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_phy_perform_ratechange (struct xgbe_prv_data*,int,int) ;
 int xgbe_phy_set_redrv_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_sfi_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 xgbe_phy_set_redrv_mode(pdata);


 if (phy_data->sfp_cable != XGBE_SFP_CABLE_PASSIVE) {
  xgbe_phy_perform_ratechange(pdata, 3, 0);
 } else {
  if (phy_data->sfp_cable_len <= 1)
   xgbe_phy_perform_ratechange(pdata, 3, 1);
  else if (phy_data->sfp_cable_len <= 3)
   xgbe_phy_perform_ratechange(pdata, 3, 2);
  else
   xgbe_phy_perform_ratechange(pdata, 3, 3);
 }

 phy_data->cur_mode = XGBE_MODE_SFI;

 netif_dbg(pdata, link, pdata->netdev, "10GbE SFI mode set\n");
}
