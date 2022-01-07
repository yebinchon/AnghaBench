
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge_vlan {int port_vlan_list; } ;


 scalar_t__ list_empty (int *) ;
 int mlxsw_sp_bridge_vlan_destroy (struct mlxsw_sp_bridge_vlan*) ;

__attribute__((used)) static void mlxsw_sp_bridge_vlan_put(struct mlxsw_sp_bridge_vlan *bridge_vlan)
{
 if (list_empty(&bridge_vlan->port_vlan_list))
  mlxsw_sp_bridge_vlan_destroy(bridge_vlan);
}
