
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_driver {int (* trap_fini ) (struct mlxsw_core*,struct devlink_trap const*,void*) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_trap {int dummy; } ;
struct devlink {int dummy; } ;


 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int stub1 (struct mlxsw_core*,struct devlink_trap const*,void*) ;

__attribute__((used)) static void mlxsw_devlink_trap_fini(struct devlink *devlink,
        const struct devlink_trap *trap,
        void *trap_ctx)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;

 if (!mlxsw_driver->trap_fini)
  return;
 mlxsw_driver->trap_fini(mlxsw_core, trap, trap_ctx);
}
