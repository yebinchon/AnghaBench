
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_an73_enable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_an73_set (struct xgbe_prv_data*,int,int) ;

__attribute__((used)) static void xgbe_an73_restart(struct xgbe_prv_data *pdata)
{
 xgbe_an73_enable_interrupts(pdata);
 xgbe_an73_set(pdata, 1, 1);

 netif_dbg(pdata, link, pdata->netdev, "CL73 AN enabled/restarted\n");
}
