
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_bridge_vlan {int list; int vid; int port_vlan_list; } ;
struct mlxsw_sp_bridge_port {int vlans_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlxsw_sp_bridge_vlan* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct mlxsw_sp_bridge_vlan *
mlxsw_sp_bridge_vlan_create(struct mlxsw_sp_bridge_port *bridge_port, u16 vid)
{
 struct mlxsw_sp_bridge_vlan *bridge_vlan;

 bridge_vlan = kzalloc(sizeof(*bridge_vlan), GFP_KERNEL);
 if (!bridge_vlan)
  return ((void*)0);

 INIT_LIST_HEAD(&bridge_vlan->port_vlan_list);
 bridge_vlan->vid = vid;
 list_add(&bridge_vlan->list, &bridge_port->vlans_list);

 return bridge_vlan;
}
