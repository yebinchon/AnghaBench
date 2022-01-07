
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; int base_addr; } ;
struct corkscrew_private {int lock; } ;


 struct corkscrew_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_stats (int ,struct net_device*) ;

__attribute__((used)) static struct net_device_stats *corkscrew_get_stats(struct net_device *dev)
{
 struct corkscrew_private *vp = netdev_priv(dev);
 unsigned long flags;

 if (netif_running(dev)) {
  spin_lock_irqsave(&vp->lock, flags);
  update_stats(dev->base_addr, dev);
  spin_unlock_irqrestore(&vp->lock, flags);
 }
 return &dev->stats;
}
