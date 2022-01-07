
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int netif_running (int ) ;
 int xgbe_free_rx_data (struct xgbe_prv_data*) ;
 int xgbe_free_tx_data (struct xgbe_prv_data*) ;
 int xgbe_start (struct xgbe_prv_data*) ;
 int xgbe_stop (struct xgbe_prv_data*) ;

void xgbe_restart_dev(struct xgbe_prv_data *pdata)
{

 if (!netif_running(pdata->netdev))
  return;

 xgbe_stop(pdata);

 xgbe_free_tx_data(pdata);
 xgbe_free_rx_data(pdata);

 xgbe_start(pdata);
}
