
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct bgmac {int irq; int napi; } ;


 int bgmac_chip_intrs_off (struct bgmac*) ;
 int bgmac_chip_reset (struct bgmac*) ;
 int bgmac_dma_cleanup (struct bgmac*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct bgmac* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static int bgmac_stop(struct net_device *net_dev)
{
 struct bgmac *bgmac = netdev_priv(net_dev);

 netif_carrier_off(net_dev);

 phy_stop(net_dev->phydev);

 napi_disable(&bgmac->napi);
 bgmac_chip_intrs_off(bgmac);
 free_irq(bgmac->irq, net_dev);

 bgmac_chip_reset(bgmac);
 bgmac_dma_cleanup(bgmac);

 return 0;
}
