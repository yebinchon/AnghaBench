
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct cp_private {int lock; int mii_if; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_get_link_ksettings(struct net_device *dev,
     struct ethtool_link_ksettings *cmd)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&cp->lock, flags);
 mii_ethtool_get_link_ksettings(&cp->mii_if, cmd);
 spin_unlock_irqrestore(&cp->lock, flags);

 return 0;
}
