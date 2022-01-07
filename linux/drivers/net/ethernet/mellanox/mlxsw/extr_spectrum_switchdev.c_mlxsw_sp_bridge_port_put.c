
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge_port {scalar_t__ ref_count; struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp_bridge {int dummy; } ;


 int mlxsw_sp_bridge_device_put (struct mlxsw_sp_bridge*,struct mlxsw_sp_bridge_device*) ;
 int mlxsw_sp_bridge_port_destroy (struct mlxsw_sp_bridge_port*) ;

__attribute__((used)) static void mlxsw_sp_bridge_port_put(struct mlxsw_sp_bridge *bridge,
         struct mlxsw_sp_bridge_port *bridge_port)
{
 struct mlxsw_sp_bridge_device *bridge_device;

 if (--bridge_port->ref_count != 0)
  return;
 bridge_device = bridge_port->bridge_device;
 mlxsw_sp_bridge_port_destroy(bridge_port);
 mlxsw_sp_bridge_device_put(bridge, bridge_device);
}
