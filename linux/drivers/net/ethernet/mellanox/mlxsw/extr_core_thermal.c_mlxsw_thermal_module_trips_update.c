
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_thermal_module {TYPE_1__* trips; int module; } ;
struct mlxsw_core {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int temp; } ;


 int MLXSW_THERMAL_MODULE_TEMP_SHIFT ;
 size_t MLXSW_THERMAL_TEMP_TRIP_CRIT ;
 size_t MLXSW_THERMAL_TEMP_TRIP_HIGH ;
 size_t MLXSW_THERMAL_TEMP_TRIP_HOT ;
 size_t MLXSW_THERMAL_TEMP_TRIP_NORM ;
 int SFP_TEMP_HIGH_ALARM ;
 int SFP_TEMP_HIGH_WARN ;
 int mlxsw_env_module_temp_thresholds_get (struct mlxsw_core*,int ,int ,int*) ;

__attribute__((used)) static int
mlxsw_thermal_module_trips_update(struct device *dev, struct mlxsw_core *core,
      struct mlxsw_thermal_module *tz)
{
 int crit_temp, emerg_temp;
 int err;

 err = mlxsw_env_module_temp_thresholds_get(core, tz->module,
         SFP_TEMP_HIGH_WARN,
         &crit_temp);
 if (err)
  return err;

 err = mlxsw_env_module_temp_thresholds_get(core, tz->module,
         SFP_TEMP_HIGH_ALARM,
         &emerg_temp);
 if (err)
  return err;
 if (crit_temp >= MLXSW_THERMAL_MODULE_TEMP_SHIFT)
  tz->trips[MLXSW_THERMAL_TEMP_TRIP_NORM].temp = crit_temp -
     MLXSW_THERMAL_MODULE_TEMP_SHIFT;
 else
  tz->trips[MLXSW_THERMAL_TEMP_TRIP_NORM].temp = crit_temp;
 tz->trips[MLXSW_THERMAL_TEMP_TRIP_HIGH].temp = crit_temp;
 tz->trips[MLXSW_THERMAL_TEMP_TRIP_HOT].temp = emerg_temp;
 if (emerg_temp > crit_temp)
  tz->trips[MLXSW_THERMAL_TEMP_TRIP_CRIT].temp = emerg_temp +
     MLXSW_THERMAL_MODULE_TEMP_SHIFT;
 else
  tz->trips[MLXSW_THERMAL_TEMP_TRIP_CRIT].temp = emerg_temp;

 return 0;
}
