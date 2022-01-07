
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_intf {int slave; int gbe_dev; } ;


 int netcp_ethss_update_link_state (int ,int ,struct net_device*) ;
 struct gbe_intf* netcp_module_get_intf_data (int *,struct netcp_intf*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;
 int xgbe_module ;

__attribute__((used)) static void xgbe_adjust_link(struct net_device *ndev)
{
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct gbe_intf *gbe_intf;

 gbe_intf = netcp_module_get_intf_data(&xgbe_module, netcp);
 if (!gbe_intf)
  return;

 netcp_ethss_update_link_state(gbe_intf->gbe_dev, gbe_intf->slave,
          ndev);
}
