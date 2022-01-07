
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENXIO ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int gmac_get_ksettings(struct net_device *netdev,
         struct ethtool_link_ksettings *cmd)
{
 if (!netdev->phydev)
  return -ENXIO;
 phy_ethtool_ksettings_get(netdev->phydev, cmd);

 return 0;
}
