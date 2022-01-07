
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int phy_lock; int mii_if; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_get_link_ksettings(struct net_device *netdev,
         struct ethtool_link_ksettings *cmd)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 spin_lock_bh(&jme->phy_lock);
 mii_ethtool_get_link_ksettings(&jme->mii_if, cmd);
 spin_unlock_bh(&jme->phy_lock);
 return 0;
}
