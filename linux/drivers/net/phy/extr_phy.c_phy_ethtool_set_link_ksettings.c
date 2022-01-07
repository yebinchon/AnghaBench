
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENODEV ;
 int phy_ethtool_ksettings_set (struct phy_device*,struct ethtool_link_ksettings const*) ;

int phy_ethtool_set_link_ksettings(struct net_device *ndev,
       const struct ethtool_link_ksettings *cmd)
{
 struct phy_device *phydev = ndev->phydev;

 if (!phydev)
  return -ENODEV;

 return phy_ethtool_ksettings_set(phydev, cmd);
}
