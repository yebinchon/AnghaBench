
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipvl_dev {int phy_dev; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int __ethtool_get_link_ksettings (int ,struct ethtool_link_ksettings*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipvlan_ethtool_get_link_ksettings(struct net_device *dev,
          struct ethtool_link_ksettings *cmd)
{
 const struct ipvl_dev *ipvlan = netdev_priv(dev);

 return __ethtool_get_link_ksettings(ipvlan->phy_dev, cmd);
}
