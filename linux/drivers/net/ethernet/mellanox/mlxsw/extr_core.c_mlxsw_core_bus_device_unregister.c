
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mapping; } ;
struct mlxsw_core {TYPE_3__* driver; int bus_priv; TYPE_2__* bus; TYPE_1__ lag; int hwmon; int thermal; } ;
struct devlink {int dummy; } ;
struct TYPE_6__ {int (* params_unregister ) (struct mlxsw_core*) ;int (* fini ) (struct mlxsw_core*) ;} ;
struct TYPE_5__ {int (* fini ) (int ) ;} ;


 int devlink_free (struct devlink*) ;
 scalar_t__ devlink_is_reload_failed (struct devlink*) ;
 int devlink_params_unpublish (struct devlink*) ;
 int devlink_resources_unregister (struct devlink*,int *) ;
 int devlink_unregister (struct devlink*) ;
 int kfree (int ) ;
 int mlxsw_emad_fini (struct mlxsw_core*) ;
 int mlxsw_hwmon_fini (int ) ;
 int mlxsw_ports_fini (struct mlxsw_core*) ;
 int mlxsw_thermal_fini (int ) ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;
 int stub1 (struct mlxsw_core*) ;
 int stub2 (struct mlxsw_core*) ;
 int stub3 (int ) ;
 int stub4 (struct mlxsw_core*) ;

void mlxsw_core_bus_device_unregister(struct mlxsw_core *mlxsw_core,
          bool reload)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);

 if (devlink_is_reload_failed(devlink)) {
  if (!reload)



   goto reload_fail_deinit;
  else
   return;
 }

 if (mlxsw_core->driver->params_unregister)
  devlink_params_unpublish(devlink);
 mlxsw_thermal_fini(mlxsw_core->thermal);
 mlxsw_hwmon_fini(mlxsw_core->hwmon);
 if (mlxsw_core->driver->fini)
  mlxsw_core->driver->fini(mlxsw_core);
 if (mlxsw_core->driver->params_unregister && !reload)
  mlxsw_core->driver->params_unregister(mlxsw_core);
 if (!reload)
  devlink_unregister(devlink);
 mlxsw_emad_fini(mlxsw_core);
 kfree(mlxsw_core->lag.mapping);
 mlxsw_ports_fini(mlxsw_core);
 if (!reload)
  devlink_resources_unregister(devlink, ((void*)0));
 mlxsw_core->bus->fini(mlxsw_core->bus_priv);

 return;

reload_fail_deinit:
 if (mlxsw_core->driver->params_unregister)
  mlxsw_core->driver->params_unregister(mlxsw_core);
 devlink_unregister(devlink);
 devlink_resources_unregister(devlink, ((void*)0));
 devlink_free(devlink);
}
