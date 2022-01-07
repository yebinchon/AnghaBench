
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int netif_running (struct net_device*) ;
 int phy_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int bcmgenet_set_link_ksettings(struct net_device *dev,
           const struct ethtool_link_ksettings *cmd)
{
 if (!netif_running(dev))
  return -EINVAL;

 if (!dev->phydev)
  return -ENODEV;

 return phy_ethtool_ksettings_set(dev->phydev, cmd);
}
