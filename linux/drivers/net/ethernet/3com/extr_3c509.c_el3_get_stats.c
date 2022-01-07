
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct el3_private {int lock; } ;


 struct el3_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_stats (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *
el3_get_stats(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 unsigned long flags;






 spin_lock_irqsave(&lp->lock, flags);
 update_stats(dev);
 spin_unlock_irqrestore(&lp->lock, flags);
 return &dev->stats;
}
