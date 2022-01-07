
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {int dummy; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* ops; } ;
struct mlxsw_sp {int bridge; } ;
struct TYPE_2__ {int (* port_leave ) (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_port*) ;} ;


 struct mlxsw_sp_bridge_port* __mlxsw_sp_bridge_port_find (struct mlxsw_sp_bridge_device*,struct net_device*) ;
 struct mlxsw_sp_bridge_device* mlxsw_sp_bridge_device_find (int ,struct net_device*) ;
 int mlxsw_sp_bridge_port_put (int ,struct mlxsw_sp_bridge_port*) ;
 int stub1 (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_port*) ;

void mlxsw_sp_port_bridge_leave(struct mlxsw_sp_port *mlxsw_sp_port,
    struct net_device *brport_dev,
    struct net_device *br_dev)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_bridge_device *bridge_device;
 struct mlxsw_sp_bridge_port *bridge_port;

 bridge_device = mlxsw_sp_bridge_device_find(mlxsw_sp->bridge, br_dev);
 if (!bridge_device)
  return;
 bridge_port = __mlxsw_sp_bridge_port_find(bridge_device, brport_dev);
 if (!bridge_port)
  return;

 bridge_device->ops->port_leave(bridge_device, bridge_port,
           mlxsw_sp_port);
 mlxsw_sp_bridge_port_put(mlxsw_sp->bridge, bridge_port);
}
