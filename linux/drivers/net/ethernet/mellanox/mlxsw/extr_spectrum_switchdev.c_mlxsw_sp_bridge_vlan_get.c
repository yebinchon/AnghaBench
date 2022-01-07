
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_bridge_vlan {int dummy; } ;
struct mlxsw_sp_bridge_port {int dummy; } ;


 struct mlxsw_sp_bridge_vlan* mlxsw_sp_bridge_vlan_create (struct mlxsw_sp_bridge_port*,int ) ;
 struct mlxsw_sp_bridge_vlan* mlxsw_sp_bridge_vlan_find (struct mlxsw_sp_bridge_port*,int ) ;

__attribute__((used)) static struct mlxsw_sp_bridge_vlan *
mlxsw_sp_bridge_vlan_get(struct mlxsw_sp_bridge_port *bridge_port, u16 vid)
{
 struct mlxsw_sp_bridge_vlan *bridge_vlan;

 bridge_vlan = mlxsw_sp_bridge_vlan_find(bridge_port, vid);
 if (bridge_vlan)
  return bridge_vlan;

 return mlxsw_sp_bridge_vlan_create(bridge_port, vid);
}
