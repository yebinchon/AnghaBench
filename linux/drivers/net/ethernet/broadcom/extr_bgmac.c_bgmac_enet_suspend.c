
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct bgmac {TYPE_1__* net_dev; int napi; } ;
struct TYPE_6__ {int phydev; } ;


 int bgmac_chip_intrs_off (struct bgmac*) ;
 int bgmac_chip_reset (struct bgmac*) ;
 int bgmac_dma_cleanup (struct bgmac*) ;
 int napi_disable (int *) ;
 int netif_device_detach (TYPE_1__*) ;
 int netif_running (TYPE_1__*) ;
 int netif_stop_queue (TYPE_1__*) ;
 int netif_tx_lock (TYPE_1__*) ;
 int netif_tx_unlock (TYPE_1__*) ;
 int phy_stop (int ) ;

int bgmac_enet_suspend(struct bgmac *bgmac)
{
 if (!netif_running(bgmac->net_dev))
  return 0;

 phy_stop(bgmac->net_dev->phydev);

 netif_stop_queue(bgmac->net_dev);

 napi_disable(&bgmac->napi);

 netif_tx_lock(bgmac->net_dev);
 netif_device_detach(bgmac->net_dev);
 netif_tx_unlock(bgmac->net_dev);

 bgmac_chip_intrs_off(bgmac);
 bgmac_chip_reset(bgmac);
 bgmac_dma_cleanup(bgmac);

 return 0;
}
