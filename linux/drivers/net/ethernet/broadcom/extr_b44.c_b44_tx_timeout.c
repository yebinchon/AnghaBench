
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct b44 {int lock; } ;


 int B44_FULL_RESET ;
 int b44_enable_ints (struct b44*) ;
 int b44_halt (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_init_rings (struct b44*) ;
 int netdev_err (struct net_device*,char*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void b44_tx_timeout(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);

 netdev_err(dev, "transmit timed out, resetting\n");

 spin_lock_irq(&bp->lock);

 b44_halt(bp);
 b44_init_rings(bp);
 b44_init_hw(bp, B44_FULL_RESET);

 spin_unlock_irq(&bp->lock);

 b44_enable_ints(bp);

 netif_wake_queue(dev);
}
