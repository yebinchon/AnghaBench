
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attrs; } ;
struct mlxsw_hwmon {struct device* hwmon_dev; TYPE_1__** groups; int attrs; TYPE_1__ group; struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 struct device* hwmon_device_register_with_groups (int ,char*,struct mlxsw_hwmon*,TYPE_1__**) ;
 int kfree (struct mlxsw_hwmon*) ;
 struct mlxsw_hwmon* kzalloc (int,int ) ;
 int mlxsw_hwmon_fans_init (struct mlxsw_hwmon*) ;
 int mlxsw_hwmon_gearbox_init (struct mlxsw_hwmon*) ;
 int mlxsw_hwmon_module_init (struct mlxsw_hwmon*) ;
 int mlxsw_hwmon_temp_init (struct mlxsw_hwmon*) ;

int mlxsw_hwmon_init(struct mlxsw_core *mlxsw_core,
       const struct mlxsw_bus_info *mlxsw_bus_info,
       struct mlxsw_hwmon **p_hwmon)
{
 struct mlxsw_hwmon *mlxsw_hwmon;
 struct device *hwmon_dev;
 int err;

 mlxsw_hwmon = kzalloc(sizeof(*mlxsw_hwmon), GFP_KERNEL);
 if (!mlxsw_hwmon)
  return -ENOMEM;
 mlxsw_hwmon->core = mlxsw_core;
 mlxsw_hwmon->bus_info = mlxsw_bus_info;

 err = mlxsw_hwmon_temp_init(mlxsw_hwmon);
 if (err)
  goto err_temp_init;

 err = mlxsw_hwmon_fans_init(mlxsw_hwmon);
 if (err)
  goto err_fans_init;

 err = mlxsw_hwmon_module_init(mlxsw_hwmon);
 if (err)
  goto err_temp_module_init;

 err = mlxsw_hwmon_gearbox_init(mlxsw_hwmon);
 if (err)
  goto err_temp_gearbox_init;

 mlxsw_hwmon->groups[0] = &mlxsw_hwmon->group;
 mlxsw_hwmon->group.attrs = mlxsw_hwmon->attrs;

 hwmon_dev = hwmon_device_register_with_groups(mlxsw_bus_info->dev,
            "mlxsw", mlxsw_hwmon,
            mlxsw_hwmon->groups);
 if (IS_ERR(hwmon_dev)) {
  err = PTR_ERR(hwmon_dev);
  goto err_hwmon_register;
 }

 mlxsw_hwmon->hwmon_dev = hwmon_dev;
 *p_hwmon = mlxsw_hwmon;
 return 0;

err_hwmon_register:
err_temp_gearbox_init:
err_temp_module_init:
err_fans_init:
err_temp_init:
 kfree(mlxsw_hwmon);
 return err;
}
