
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct b44 {TYPE_1__* sdev; int lock; int flags; } ;
struct TYPE_2__ {int dev; } ;


 int B44_FLAG_WOL_ENABLE ;
 int WAKE_MAGIC ;
 int device_set_wakeup_enable (int ,int) ;
 struct b44* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct b44 *bp = netdev_priv(dev);

 spin_lock_irq(&bp->lock);
 if (wol->wolopts & WAKE_MAGIC)
  bp->flags |= B44_FLAG_WOL_ENABLE;
 else
  bp->flags &= ~B44_FLAG_WOL_ENABLE;
 spin_unlock_irq(&bp->lock);

 device_set_wakeup_enable(bp->sdev->dev, wol->wolopts & WAKE_MAGIC);
 return 0;
}
