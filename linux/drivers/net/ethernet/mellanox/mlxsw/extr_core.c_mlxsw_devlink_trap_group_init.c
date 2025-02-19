
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_driver {int (* trap_group_init ) (struct mlxsw_core*,struct devlink_trap_group const*) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_trap_group {int dummy; } ;
struct devlink {int dummy; } ;


 int EOPNOTSUPP ;
 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int stub1 (struct mlxsw_core*,struct devlink_trap_group const*) ;

__attribute__((used)) static int
mlxsw_devlink_trap_group_init(struct devlink *devlink,
         const struct devlink_trap_group *group)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;

 if (!mlxsw_driver->trap_group_init)
  return -EOPNOTSUPP;
 return mlxsw_driver->trap_group_init(mlxsw_core, group);
}
