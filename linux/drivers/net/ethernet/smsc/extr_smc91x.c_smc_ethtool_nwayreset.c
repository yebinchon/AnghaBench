
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {scalar_t__ phy_type; int lock; int mii; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int mii_nway_restart (int *) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int smc_ethtool_nwayreset(struct net_device *dev)
{
 struct smc_local *lp = netdev_priv(dev);
 int ret = -EINVAL;

 if (lp->phy_type != 0) {
  spin_lock_irq(&lp->lock);
  ret = mii_nway_restart(&lp->mii);
  spin_unlock_irq(&lp->lock);
 }

 return ret;
}
