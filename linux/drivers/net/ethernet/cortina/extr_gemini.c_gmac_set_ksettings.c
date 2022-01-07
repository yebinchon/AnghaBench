
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENXIO ;
 int phy_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int gmac_set_ksettings(struct net_device *netdev,
         const struct ethtool_link_ksettings *cmd)
{
 if (!netdev->phydev)
  return -ENXIO;
 return phy_ethtool_ksettings_set(netdev->phydev, cmd);
}
