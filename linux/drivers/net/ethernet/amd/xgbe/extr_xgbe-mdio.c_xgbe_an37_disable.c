
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_an37_disable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_an37_set (struct xgbe_prv_data*,int,int) ;

__attribute__((used)) static void xgbe_an37_disable(struct xgbe_prv_data *pdata)
{
 xgbe_an37_set(pdata, 0, 0);
 xgbe_an37_disable_interrupts(pdata);

 netif_dbg(pdata, link, pdata->netdev, "CL37 AN disabled\n");
}
