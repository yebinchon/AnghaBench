
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rhine_private {int quirks; int wolopts; int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int rqWOL ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rhine_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct rhine_private *rp = netdev_priv(dev);
 u32 support = WAKE_PHY | WAKE_MAGIC |
        WAKE_UCAST | WAKE_MCAST | WAKE_BCAST;

 if (!(rp->quirks & rqWOL))
  return -EINVAL;

 if (wol->wolopts & ~support)
  return -EINVAL;

 spin_lock_irq(&rp->lock);
 rp->wolopts = wol->wolopts;
 spin_unlock_irq(&rp->lock);

 return 0;
}
