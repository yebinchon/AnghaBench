
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct b44 {int lock; } ;


 int __b44_set_rx_mode (struct net_device*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void b44_set_rx_mode(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);

 spin_lock_irq(&bp->lock);
 __b44_set_rx_mode(dev);
 spin_unlock_irq(&bp->lock);
}
