
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mem_end; int mem_start; int base_addr; int dev; int phydev; int name; int irq; } ;
struct ethoc {int old_link; int old_duplex; int napi; } ;


 int IRQF_SHARED ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 int ethoc_init_ring (struct ethoc*,int ) ;
 int ethoc_interrupt ;
 int ethoc_reset (struct ethoc*) ;
 int napi_enable (int *) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct ethoc*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int phy_start (int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int ethoc_open(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);
 int ret;

 ret = request_irq(dev->irq, ethoc_interrupt, IRQF_SHARED,
   dev->name, dev);
 if (ret)
  return ret;

 napi_enable(&priv->napi);

 ethoc_init_ring(priv, dev->mem_start);
 ethoc_reset(priv);

 if (netif_queue_stopped(dev)) {
  dev_dbg(&dev->dev, " resuming queue\n");
  netif_wake_queue(dev);
 } else {
  dev_dbg(&dev->dev, " starting queue\n");
  netif_start_queue(dev);
 }

 priv->old_link = -1;
 priv->old_duplex = -1;

 phy_start(dev->phydev);

 if (netif_msg_ifup(priv)) {
  dev_info(&dev->dev, "I/O: %08lx Memory: %08lx-%08lx\n",
    dev->base_addr, dev->mem_start, dev->mem_end);
 }

 return 0;
}
