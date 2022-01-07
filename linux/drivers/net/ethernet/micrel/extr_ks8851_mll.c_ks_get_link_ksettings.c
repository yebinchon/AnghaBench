
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_net {int mii; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_get_link_ksettings(struct net_device *netdev,
     struct ethtool_link_ksettings *cmd)
{
 struct ks_net *ks = netdev_priv(netdev);

 mii_ethtool_get_link_ksettings(&ks->mii, cmd);

 return 0;
}
