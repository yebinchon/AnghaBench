
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENODEV ;
 int phy_ethtool_ksettings_get (struct phy_device*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int xge_get_link_ksettings(struct net_device *ndev,
      struct ethtool_link_ksettings *cmd)
{
 struct phy_device *phydev = ndev->phydev;

 if (!phydev)
  return -ENODEV;

 phy_ethtool_ksettings_get(phydev, cmd);

 return 0;
}
