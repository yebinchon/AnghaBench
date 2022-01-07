
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int quirks; int lock; int wolopts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int rqWOL ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void rhine_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct rhine_private *rp = netdev_priv(dev);

 if (!(rp->quirks & rqWOL))
  return;

 spin_lock_irq(&rp->lock);
 wol->supported = WAKE_PHY | WAKE_MAGIC |
    WAKE_UCAST | WAKE_MCAST | WAKE_BCAST;
 wol->wolopts = rp->wolopts;
 spin_unlock_irq(&rp->lock);
}
