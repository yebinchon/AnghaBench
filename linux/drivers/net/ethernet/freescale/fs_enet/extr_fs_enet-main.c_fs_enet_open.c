
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct fs_enet_private {int napi; int interrupt; int dev; int ndev; } ;


 int EINVAL ;
 int IRQF_SHARED ;
 int dev_err (int ,char*) ;
 int free_irq (int ,struct net_device*) ;
 int fs_enet_interrupt ;
 int fs_init_bds (int ) ;
 int fs_init_phy (struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static int fs_enet_open(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 int r;
 int err;



 fs_init_bds(fep->ndev);

 napi_enable(&fep->napi);


 r = request_irq(fep->interrupt, fs_enet_interrupt, IRQF_SHARED,
   "fs_enet-mac", dev);
 if (r != 0) {
  dev_err(fep->dev, "Could not allocate FS_ENET IRQ!");
  napi_disable(&fep->napi);
  return -EINVAL;
 }

 err = fs_init_phy(dev);
 if (err) {
  free_irq(fep->interrupt, dev);
  napi_disable(&fep->napi);
  return err;
 }
 phy_start(dev->phydev);

 netif_start_queue(dev);

 return 0;
}
