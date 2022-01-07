
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct axienet_local {int phylink; } ;


 struct axienet_local* netdev_priv (struct net_device*) ;
 int phylink_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int
axienet_ethtools_set_link_ksettings(struct net_device *ndev,
        const struct ethtool_link_ksettings *cmd)
{
 struct axienet_local *lp = netdev_priv(ndev);

 return phylink_ethtool_ksettings_set(lp->phylink, cmd);
}
