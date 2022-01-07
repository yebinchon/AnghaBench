
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int netdev; } ;


 int netif_running (int ) ;
 int xlgmac_free_rx_data (struct xlgmac_pdata*) ;
 int xlgmac_free_tx_data (struct xlgmac_pdata*) ;
 int xlgmac_start (struct xlgmac_pdata*) ;
 int xlgmac_stop (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_restart_dev(struct xlgmac_pdata *pdata)
{

 if (!netif_running(pdata->netdev))
  return;

 xlgmac_stop(pdata);

 xlgmac_free_tx_data(pdata);
 xlgmac_free_rx_data(pdata);

 xlgmac_start(pdata);
}
