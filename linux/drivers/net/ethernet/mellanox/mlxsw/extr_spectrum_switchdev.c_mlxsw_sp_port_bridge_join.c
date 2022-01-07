
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* ops; } ;
struct mlxsw_sp {int bridge; } ;
struct TYPE_2__ {int (* port_join ) (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_port*,struct netlink_ext_ack*) ;} ;


 scalar_t__ IS_ERR (struct mlxsw_sp_bridge_port*) ;
 int PTR_ERR (struct mlxsw_sp_bridge_port*) ;
 struct mlxsw_sp_bridge_port* mlxsw_sp_bridge_port_get (int ,struct net_device*) ;
 int mlxsw_sp_bridge_port_put (int ,struct mlxsw_sp_bridge_port*) ;
 int stub1 (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_port*,struct netlink_ext_ack*) ;

int mlxsw_sp_port_bridge_join(struct mlxsw_sp_port *mlxsw_sp_port,
         struct net_device *brport_dev,
         struct net_device *br_dev,
         struct netlink_ext_ack *extack)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_bridge_device *bridge_device;
 struct mlxsw_sp_bridge_port *bridge_port;
 int err;

 bridge_port = mlxsw_sp_bridge_port_get(mlxsw_sp->bridge, brport_dev);
 if (IS_ERR(bridge_port))
  return PTR_ERR(bridge_port);
 bridge_device = bridge_port->bridge_device;

 err = bridge_device->ops->port_join(bridge_device, bridge_port,
         mlxsw_sp_port, extack);
 if (err)
  goto err_port_join;

 return 0;

err_port_join:
 mlxsw_sp_bridge_port_put(mlxsw_sp->bridge, bridge_port);
 return err;
}
