
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct mv643xx_eth_private {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mv643xx_eth_get_link_ksettings_phy (struct mv643xx_eth_private*,struct ethtool_link_ksettings*) ;
 int mv643xx_eth_get_link_ksettings_phyless (struct mv643xx_eth_private*,struct ethtool_link_ksettings*) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mv643xx_eth_get_link_ksettings(struct net_device *dev,
          struct ethtool_link_ksettings *cmd)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (dev->phydev)
  return mv643xx_eth_get_link_ksettings_phy(mp, cmd);
 else
  return mv643xx_eth_get_link_ksettings_phyless(mp, cmd);
}
