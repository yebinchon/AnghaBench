
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; int irq; int name; } ;
struct au1000_private {int dummy; } ;


 int au1000_init (struct net_device*) ;
 int au1000_interrupt ;
 int drv ;
 int free_irq (int ,struct net_device*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct au1000_private*,int ,struct net_device*,char*,...) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int au1000_open(struct net_device *dev)
{
 int retval;
 struct au1000_private *aup = netdev_priv(dev);

 netif_dbg(aup, drv, dev, "open: dev=%p\n", dev);

 retval = request_irq(dev->irq, au1000_interrupt, 0,
     dev->name, dev);
 if (retval) {
  netdev_err(dev, "unable to get IRQ %d\n", dev->irq);
  return retval;
 }

 retval = au1000_init(dev);
 if (retval) {
  netdev_err(dev, "error in au1000_init\n");
  free_irq(dev->irq, dev);
  return retval;
 }

 if (dev->phydev)
  phy_start(dev->phydev);

 netif_start_queue(dev);

 netif_dbg(aup, drv, dev, "open: Initialization done.\n");

 return 0;
}
