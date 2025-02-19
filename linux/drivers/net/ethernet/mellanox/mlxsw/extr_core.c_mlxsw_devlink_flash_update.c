
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxsw_driver {int (* flash_update ) (struct mlxsw_core*,char const*,char const*,struct netlink_ext_ack*) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink {int dummy; } ;


 int EOPNOTSUPP ;
 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int stub1 (struct mlxsw_core*,char const*,char const*,struct netlink_ext_ack*) ;

__attribute__((used)) static int mlxsw_devlink_flash_update(struct devlink *devlink,
          const char *file_name,
          const char *component,
          struct netlink_ext_ack *extack)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;

 if (!mlxsw_driver->flash_update)
  return -EOPNOTSUPP;
 return mlxsw_driver->flash_update(mlxsw_core, file_name,
       component, extack);
}
