
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_driver {int (* port_type_set ) (struct mlxsw_core*,int ,int) ;} ;
struct mlxsw_core_port {int local_port; } ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_port {int devlink; } ;
typedef enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;


 int EOPNOTSUPP ;
 struct mlxsw_core_port* __dl_port (struct devlink_port*) ;
 struct mlxsw_core* devlink_priv (int ) ;
 int stub1 (struct mlxsw_core*,int ,int) ;

__attribute__((used)) static int mlxsw_devlink_port_type_set(struct devlink_port *devlink_port,
           enum devlink_port_type port_type)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink_port->devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;
 struct mlxsw_core_port *mlxsw_core_port = __dl_port(devlink_port);

 if (!mlxsw_driver->port_type_set)
  return -EOPNOTSUPP;

 return mlxsw_driver->port_type_set(mlxsw_core,
        mlxsw_core_port->local_port,
        port_type);
}
