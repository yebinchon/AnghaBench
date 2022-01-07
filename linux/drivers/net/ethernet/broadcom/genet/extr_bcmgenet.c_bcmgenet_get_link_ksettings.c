
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int netif_running (struct net_device*) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int bcmgenet_get_link_ksettings(struct net_device *dev,
           struct ethtool_link_ksettings *cmd)
{
 if (!netif_running(dev))
  return -EINVAL;

 if (!dev->phydev)
  return -ENODEV;

 phy_ethtool_ksettings_get(dev->phydev, cmd);

 return 0;
}
