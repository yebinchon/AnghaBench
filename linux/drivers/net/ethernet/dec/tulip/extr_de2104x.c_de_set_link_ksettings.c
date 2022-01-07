
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct de_private {int lock; } ;


 int __de_set_link_ksettings (struct de_private*,struct ethtool_link_ksettings const*) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int de_set_link_ksettings(struct net_device *dev,
     const struct ethtool_link_ksettings *cmd)
{
 struct de_private *de = netdev_priv(dev);
 int rc;

 spin_lock_irq(&de->lock);
 rc = __de_set_link_ksettings(de, cmd);
 spin_unlock_irq(&de->lock);

 return rc;
}
