
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int ioc3_lock; int mii; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ioc3_get_link_ksettings(struct net_device *dev,
       struct ethtool_link_ksettings *cmd)
{
 struct ioc3_private *ip = netdev_priv(dev);

 spin_lock_irq(&ip->ioc3_lock);
 mii_ethtool_get_link_ksettings(&ip->mii, cmd);
 spin_unlock_irq(&ip->ioc3_lock);

 return 0;
}
