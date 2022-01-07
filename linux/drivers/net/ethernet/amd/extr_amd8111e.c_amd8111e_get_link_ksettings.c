
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct amd8111e_priv {int lock; int mii_if; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_get_link_ksettings(struct net_device *dev,
           struct ethtool_link_ksettings *cmd)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 spin_lock_irq(&lp->lock);
 mii_ethtool_get_link_ksettings(&lp->mii_if, cmd);
 spin_unlock_irq(&lp->lock);
 return 0;
}
