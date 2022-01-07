
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge_port {int vlans_list; int list; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_bridge_port*) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void
mlxsw_sp_bridge_port_destroy(struct mlxsw_sp_bridge_port *bridge_port)
{
 list_del(&bridge_port->list);
 WARN_ON(!list_empty(&bridge_port->vlans_list));
 kfree(bridge_port);
}
