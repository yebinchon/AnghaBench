
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct bgmac {TYPE_1__* net_dev; int napi; } ;
struct TYPE_6__ {int phydev; } ;


 int bgmac_chip_init (struct bgmac*) ;
 int bgmac_dma_init (struct bgmac*) ;
 int napi_enable (int *) ;
 int netif_device_attach (TYPE_1__*) ;
 int netif_running (TYPE_1__*) ;
 int netif_start_queue (TYPE_1__*) ;
 int netif_tx_lock (TYPE_1__*) ;
 int netif_tx_unlock (TYPE_1__*) ;
 int phy_start (int ) ;

int bgmac_enet_resume(struct bgmac *bgmac)
{
 int rc;

 if (!netif_running(bgmac->net_dev))
  return 0;

 rc = bgmac_dma_init(bgmac);
 if (rc)
  return rc;

 bgmac_chip_init(bgmac);

 napi_enable(&bgmac->napi);

 netif_tx_lock(bgmac->net_dev);
 netif_device_attach(bgmac->net_dev);
 netif_tx_unlock(bgmac->net_dev);

 netif_start_queue(bgmac->net_dev);

 phy_start(bgmac->net_dev->phydev);

 return 0;
}
