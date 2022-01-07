
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftmac100 {int mii; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct ftmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ftmac100_set_link_ksettings(struct net_device *netdev,
           const struct ethtool_link_ksettings *cmd)
{
 struct ftmac100 *priv = netdev_priv(netdev);
 return mii_ethtool_set_link_ksettings(&priv->mii, cmd);
}
