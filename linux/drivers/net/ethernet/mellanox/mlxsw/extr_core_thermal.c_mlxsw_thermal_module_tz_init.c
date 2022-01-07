
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tz_name ;
struct mlxsw_thermal_module {int module; int mode; int tzdev; } ;


 scalar_t__ IS_ERR (int ) ;
 int MLXSW_THERMAL_NUM_TRIPS ;
 int MLXSW_THERMAL_TRIP_MASK ;
 int MLXSW_THERMAL_ZONE_MAX_NAME ;
 int PTR_ERR (int ) ;
 int THERMAL_DEVICE_ENABLED ;
 int mlxsw_thermal_module_ops ;
 int snprintf (char*,int,char*,int) ;
 int thermal_zone_device_register (char*,int ,int ,struct mlxsw_thermal_module*,int *,int *,int ,int ) ;

__attribute__((used)) static int
mlxsw_thermal_module_tz_init(struct mlxsw_thermal_module *module_tz)
{
 char tz_name[MLXSW_THERMAL_ZONE_MAX_NAME];
 int err;

 snprintf(tz_name, sizeof(tz_name), "mlxsw-module%d",
   module_tz->module + 1);
 module_tz->tzdev = thermal_zone_device_register(tz_name,
       MLXSW_THERMAL_NUM_TRIPS,
       MLXSW_THERMAL_TRIP_MASK,
       module_tz,
       &mlxsw_thermal_module_ops,
       ((void*)0), 0, 0);
 if (IS_ERR(module_tz->tzdev)) {
  err = PTR_ERR(module_tz->tzdev);
  return err;
 }

 module_tz->mode = THERMAL_DEVICE_ENABLED;
 return 0;
}
