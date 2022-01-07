
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct devlink_port {int dummy; } ;
struct mlxsw_core_port {void* port_driver_priv; struct devlink_port devlink_port; } ;
struct mlxsw_core {struct mlxsw_core_port* ports; } ;


 int devlink_port_type_clear (struct devlink_port*) ;

void mlxsw_core_port_clear(struct mlxsw_core *mlxsw_core, u8 local_port,
      void *port_driver_priv)
{
 struct mlxsw_core_port *mlxsw_core_port =
     &mlxsw_core->ports[local_port];
 struct devlink_port *devlink_port = &mlxsw_core_port->devlink_port;

 mlxsw_core_port->port_driver_priv = port_driver_priv;
 devlink_port_type_clear(devlink_port);
}
