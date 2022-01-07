
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; } ;
struct net_device {int dummy; } ;
typedef int spinlock_t ;


 int __set_rx_mode (struct net_device*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
 spinlock_t *lp = &((struct netdev_private *)netdev_priv(dev))->lock;
 unsigned long flags;
 spin_lock_irqsave(lp, flags);
 __set_rx_mode(dev);
 spin_unlock_irqrestore(lp, flags);
}
