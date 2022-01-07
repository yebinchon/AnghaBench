
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_port_vlan {int dummy; } ;
struct mlxsw_sp_port {scalar_t__ pvid; } ;
struct mlxsw_sp_bridge_port {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_port_pvid_set (struct mlxsw_sp_port*,scalar_t__) ;
 int mlxsw_sp_port_vlan_bridge_leave (struct mlxsw_sp_port_vlan*) ;
 int mlxsw_sp_port_vlan_destroy (struct mlxsw_sp_port_vlan*) ;
 struct mlxsw_sp_port_vlan* mlxsw_sp_port_vlan_find_by_vid (struct mlxsw_sp_port*,scalar_t__) ;
 int mlxsw_sp_port_vlan_set (struct mlxsw_sp_port*,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static void
mlxsw_sp_bridge_port_vlan_del(struct mlxsw_sp_port *mlxsw_sp_port,
         struct mlxsw_sp_bridge_port *bridge_port, u16 vid)
{
 u16 pvid = mlxsw_sp_port->pvid == vid ? 0 : mlxsw_sp_port->pvid;
 struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;

 mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_find_by_vid(mlxsw_sp_port, vid);
 if (WARN_ON(!mlxsw_sp_port_vlan))
  return;

 mlxsw_sp_port_vlan_bridge_leave(mlxsw_sp_port_vlan);
 mlxsw_sp_port_pvid_set(mlxsw_sp_port, pvid);
 mlxsw_sp_port_vlan_set(mlxsw_sp_port, vid, vid, 0, 0);
 mlxsw_sp_port_vlan_destroy(mlxsw_sp_port_vlan);
}
