
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int cur_mode; } ;


 int XGBE_MODE_KX_2500 ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_phy_perform_ratechange (struct xgbe_prv_data*,int,int ) ;
 int xgbe_phy_set_redrv_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_kx_2500_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 xgbe_phy_set_redrv_mode(pdata);


 xgbe_phy_perform_ratechange(pdata, 2, 0);

 phy_data->cur_mode = XGBE_MODE_KX_2500;

 netif_dbg(pdata, link, pdata->netdev, "2.5GbE KX mode set\n");
}
