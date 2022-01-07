
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int netdev_dbg (struct net_device*,char*) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int dpaa_get_link_ksettings(struct net_device *net_dev,
       struct ethtool_link_ksettings *cmd)
{
 if (!net_dev->phydev) {
  netdev_dbg(net_dev, "phy device not initialized\n");
  return 0;
 }

 phy_ethtool_ksettings_get(net_dev->phydev, cmd);

 return 0;
}
