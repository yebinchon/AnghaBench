
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port_vlan {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;


 int EINVAL ;


 scalar_t__ WARN_ON (int) ;
 struct mlxsw_sp_port_vlan* mlxsw_sp_port_vlan_find_by_vid (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_port_vlan_router_join (struct mlxsw_sp_port_vlan*,struct net_device*,struct netlink_ext_ack*) ;
 int mlxsw_sp_port_vlan_router_leave (struct mlxsw_sp_port_vlan*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_inetaddr_port_vlan_event(struct net_device *l3_dev,
          struct net_device *port_dev,
          unsigned long event, u16 vid,
          struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(port_dev);
 struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;

 mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_find_by_vid(mlxsw_sp_port, vid);
 if (WARN_ON(!mlxsw_sp_port_vlan))
  return -EINVAL;

 switch (event) {
 case 128:
  return mlxsw_sp_port_vlan_router_join(mlxsw_sp_port_vlan,
            l3_dev, extack);
 case 129:
  mlxsw_sp_port_vlan_router_leave(mlxsw_sp_port_vlan);
  break;
 }

 return 0;
}
