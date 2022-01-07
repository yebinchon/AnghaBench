
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int base_addr; struct net_device_stats stats; } ;
struct hp100_private {int lock; } ;


 int TRACE ;
 int hp100_ints_off () ;
 int hp100_ints_on () ;
 int hp100_outw (int,int ) ;
 int hp100_update_stats (struct net_device*) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct net_device_stats *hp100_get_stats(struct net_device *dev)
{
 unsigned long flags;
 int ioaddr = dev->base_addr;
 struct hp100_private *lp = netdev_priv(dev);





 spin_lock_irqsave(&lp->lock, flags);
 hp100_ints_off();
 hp100_update_stats(dev);
 hp100_ints_on();
 spin_unlock_irqrestore(&lp->lock, flags);
 return &(dev->stats);
}
