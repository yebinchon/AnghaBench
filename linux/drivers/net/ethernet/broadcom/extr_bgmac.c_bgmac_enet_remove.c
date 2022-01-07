
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bgmac {TYPE_1__* net_dev; int napi; } ;
struct TYPE_3__ {int phydev; } ;


 int bgmac_dma_free (struct bgmac*) ;
 int free_netdev (TYPE_1__*) ;
 int netif_napi_del (int *) ;
 int phy_disconnect (int ) ;
 int unregister_netdev (TYPE_1__*) ;

void bgmac_enet_remove(struct bgmac *bgmac)
{
 unregister_netdev(bgmac->net_dev);
 phy_disconnect(bgmac->net_dev->phydev);
 netif_napi_del(&bgmac->napi);
 bgmac_dma_free(bgmac);
 free_netdev(bgmac->net_dev);
}
