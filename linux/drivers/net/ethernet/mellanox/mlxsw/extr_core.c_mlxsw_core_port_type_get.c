
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct devlink_port {int type; } ;
struct mlxsw_core_port {struct devlink_port devlink_port; } ;
struct mlxsw_core {struct mlxsw_core_port* ports; } ;
typedef enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;



enum devlink_port_type mlxsw_core_port_type_get(struct mlxsw_core *mlxsw_core,
      u8 local_port)
{
 struct mlxsw_core_port *mlxsw_core_port =
     &mlxsw_core->ports[local_port];
 struct devlink_port *devlink_port = &mlxsw_core_port->devlink_port;

 return devlink_port->type;
}
