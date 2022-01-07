
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_phy_perform_ratechange (struct xgbe_prv_data*,int,int ) ;

__attribute__((used)) static void xgbe_phy_rrc(struct xgbe_prv_data *pdata)
{

 xgbe_phy_perform_ratechange(pdata, 5, 0);

 netif_dbg(pdata, link, pdata->netdev, "receiver reset complete\n");
}
