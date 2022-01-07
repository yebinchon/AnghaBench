
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis900_private {int lock; int mii_info; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct sis900_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sis900_set_link_ksettings(struct net_device *net_dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct sis900_private *sis_priv = netdev_priv(net_dev);
 int rt;
 spin_lock_irq(&sis_priv->lock);
 rt = mii_ethtool_set_link_ksettings(&sis_priv->mii_info, cmd);
 spin_unlock_irq(&sis_priv->lock);
 return rt;
}
