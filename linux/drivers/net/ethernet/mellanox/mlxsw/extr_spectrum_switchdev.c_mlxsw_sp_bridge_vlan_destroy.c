
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge_vlan {int port_vlan_list; int list; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_bridge_vlan*) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void
mlxsw_sp_bridge_vlan_destroy(struct mlxsw_sp_bridge_vlan *bridge_vlan)
{
 list_del(&bridge_vlan->list);
 WARN_ON(!list_empty(&bridge_vlan->port_vlan_list));
 kfree(bridge_vlan);
}
