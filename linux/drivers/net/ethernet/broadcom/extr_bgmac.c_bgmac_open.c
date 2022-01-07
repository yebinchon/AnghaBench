
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; int name; } ;
struct bgmac {int napi; int dev; int irq; } ;


 int IRQF_SHARED ;
 int bgmac_chip_init (struct bgmac*) ;
 int bgmac_chip_reset (struct bgmac*) ;
 int bgmac_dma_cleanup (struct bgmac*) ;
 int bgmac_dma_init (struct bgmac*) ;
 int bgmac_interrupt ;
 int dev_err (int ,char*,int) ;
 int napi_enable (int *) ;
 struct bgmac* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int bgmac_open(struct net_device *net_dev)
{
 struct bgmac *bgmac = netdev_priv(net_dev);
 int err = 0;

 bgmac_chip_reset(bgmac);

 err = bgmac_dma_init(bgmac);
 if (err)
  return err;


 bgmac_chip_init(bgmac);

 err = request_irq(bgmac->irq, bgmac_interrupt, IRQF_SHARED,
     net_dev->name, net_dev);
 if (err < 0) {
  dev_err(bgmac->dev, "IRQ request error: %d!\n", err);
  bgmac_dma_cleanup(bgmac);
  return err;
 }
 napi_enable(&bgmac->napi);

 phy_start(net_dev->phydev);

 netif_start_queue(net_dev);

 return 0;
}
