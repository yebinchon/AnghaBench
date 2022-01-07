
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct bmac_data {int timeout_active; int lock; TYPE_1__ tx_timeout; } ;


 scalar_t__ TX_TIMEOUT ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void bmac_set_timeout(struct net_device *dev)
{
 struct bmac_data *bp = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&bp->lock, flags);
 if (bp->timeout_active)
  del_timer(&bp->tx_timeout);
 bp->tx_timeout.expires = jiffies + TX_TIMEOUT;
 add_timer(&bp->tx_timeout);
 bp->timeout_active = 1;
 spin_unlock_irqrestore(&bp->lock, flags);
}
