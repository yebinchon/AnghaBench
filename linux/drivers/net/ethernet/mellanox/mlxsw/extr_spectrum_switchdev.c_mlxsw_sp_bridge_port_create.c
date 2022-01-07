
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int local_port; int lag_id; scalar_t__ lagged; } ;
struct mlxsw_sp_bridge_port {int flags; int ref_count; int list; int vlans_list; int stp_state; struct mlxsw_sp_bridge_device* bridge_device; struct net_device* dev; int system_port; int lag_id; scalar_t__ lagged; } ;
struct mlxsw_sp_bridge_device {int ports_list; } ;


 int BR_FLOOD ;
 int BR_LEARNING ;
 int BR_LEARNING_SYNC ;
 int BR_MCAST_FLOOD ;
 int BR_STATE_DISABLED ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlxsw_sp_bridge_port* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mlxsw_sp_port* mlxsw_sp_port_dev_lower_find (struct net_device*) ;

__attribute__((used)) static struct mlxsw_sp_bridge_port *
mlxsw_sp_bridge_port_create(struct mlxsw_sp_bridge_device *bridge_device,
       struct net_device *brport_dev)
{
 struct mlxsw_sp_bridge_port *bridge_port;
 struct mlxsw_sp_port *mlxsw_sp_port;

 bridge_port = kzalloc(sizeof(*bridge_port), GFP_KERNEL);
 if (!bridge_port)
  return ((void*)0);

 mlxsw_sp_port = mlxsw_sp_port_dev_lower_find(brport_dev);
 bridge_port->lagged = mlxsw_sp_port->lagged;
 if (bridge_port->lagged)
  bridge_port->lag_id = mlxsw_sp_port->lag_id;
 else
  bridge_port->system_port = mlxsw_sp_port->local_port;
 bridge_port->dev = brport_dev;
 bridge_port->bridge_device = bridge_device;
 bridge_port->stp_state = BR_STATE_DISABLED;
 bridge_port->flags = BR_LEARNING | BR_FLOOD | BR_LEARNING_SYNC |
        BR_MCAST_FLOOD;
 INIT_LIST_HEAD(&bridge_port->vlans_list);
 list_add(&bridge_port->list, &bridge_device->ports_list);
 bridge_port->ref_count = 1;

 return bridge_port;
}
