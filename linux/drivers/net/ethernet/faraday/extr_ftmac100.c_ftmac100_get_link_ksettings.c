
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftmac100 {int mii; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct ftmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ftmac100_get_link_ksettings(struct net_device *netdev,
           struct ethtool_link_ksettings *cmd)
{
 struct ftmac100 *priv = netdev_priv(netdev);

 mii_ethtool_get_link_ksettings(&priv->mii, cmd);

 return 0;
}
