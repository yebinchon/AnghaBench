
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc911x_local {scalar_t__ phy_type; int lock; int mii; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int mii_nway_restart (int *) ;
 struct smc911x_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smc911x_ethtool_nwayreset(struct net_device *dev)
{
 struct smc911x_local *lp = netdev_priv(dev);
 int ret = -EINVAL;
 unsigned long flags;

 if (lp->phy_type != 0) {
  spin_lock_irqsave(&lp->lock, flags);
  ret = mii_nway_restart(&lp->mii);
  spin_unlock_irqrestore(&lp->lock, flags);
 }

 return ret;
}
