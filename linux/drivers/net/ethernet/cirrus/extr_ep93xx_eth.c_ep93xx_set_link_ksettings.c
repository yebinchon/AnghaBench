
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct ep93xx_priv {int mii; } ;


 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ep93xx_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 return mii_ethtool_set_link_ksettings(&ep->mii, cmd);
}
