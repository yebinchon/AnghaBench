
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port_vlan {int bridge_port; } ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_bridge_port {struct net_device* dev; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;


 int MLXSW_SP_DEFAULT_VID ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int mlxsw_sp_port_vlan_bridge_leave (struct mlxsw_sp_port_vlan*) ;
 struct mlxsw_sp_port_vlan* mlxsw_sp_port_vlan_find_by_vid (struct mlxsw_sp_port*,int ) ;
 int vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static void
mlxsw_sp_bridge_8021d_port_leave(struct mlxsw_sp_bridge_device *bridge_device,
     struct mlxsw_sp_bridge_port *bridge_port,
     struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
 struct net_device *dev = bridge_port->dev;
 u16 vid;

 vid = is_vlan_dev(dev) ? vlan_dev_vlan_id(dev) : MLXSW_SP_DEFAULT_VID;
 mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_find_by_vid(mlxsw_sp_port, vid);
 if (!mlxsw_sp_port_vlan || !mlxsw_sp_port_vlan->bridge_port)
  return;

 mlxsw_sp_port_vlan_bridge_leave(mlxsw_sp_port_vlan);
}
