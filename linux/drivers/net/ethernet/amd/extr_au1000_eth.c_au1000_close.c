
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; scalar_t__ phydev; } ;
struct au1000_private {int lock; } ;


 int au1000_reset_mac_unlocked (struct net_device*) ;
 int drv ;
 int free_irq (int ,struct net_device*) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct au1000_private* const,int ,struct net_device*,char*,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int au1000_close(struct net_device *dev)
{
 unsigned long flags;
 struct au1000_private *const aup = netdev_priv(dev);

 netif_dbg(aup, drv, dev, "close: dev=%p\n", dev);

 if (dev->phydev)
  phy_stop(dev->phydev);

 spin_lock_irqsave(&aup->lock, flags);

 au1000_reset_mac_unlocked(dev);


 netif_stop_queue(dev);


 free_irq(dev->irq, dev);
 spin_unlock_irqrestore(&aup->lock, flags);

 return 0;
}
