
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct korina_private {int mii_if; int lock; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int korina_set_carrier (int *) ;
 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int netdev_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct korina_private *lp = netdev_priv(dev);
 int rc;

 spin_lock_irq(&lp->lock);
 rc = mii_ethtool_set_link_ksettings(&lp->mii_if, cmd);
 spin_unlock_irq(&lp->lock);
 korina_set_carrier(&lp->mii_if);

 return rc;
}
