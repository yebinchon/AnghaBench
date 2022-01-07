
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_hwmon {int hwmon_dev; } ;


 int hwmon_device_unregister (int ) ;
 int kfree (struct mlxsw_hwmon*) ;

void mlxsw_hwmon_fini(struct mlxsw_hwmon *mlxsw_hwmon)
{
 hwmon_device_unregister(mlxsw_hwmon->hwmon_dev);
 kfree(mlxsw_hwmon);
}
