
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct netcp_intf {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct gbe_intf {TYPE_2__* slave; } ;
struct TYPE_3__ {int port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_4__ {int phy_port_t; } ;


 int EINVAL ;
 struct gbe_intf* keystone_get_intf_data (struct netcp_intf*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_get (struct phy_device*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int keystone_get_link_ksettings(struct net_device *ndev,
           struct ethtool_link_ksettings *cmd)
{
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct phy_device *phy = ndev->phydev;
 struct gbe_intf *gbe_intf;

 if (!phy)
  return -EINVAL;

 gbe_intf = keystone_get_intf_data(netcp);
 if (!gbe_intf)
  return -EINVAL;

 if (!gbe_intf->slave)
  return -EINVAL;

 phy_ethtool_ksettings_get(phy, cmd);
 cmd->base.port = gbe_intf->slave->phy_port_t;

 return 0;
}
