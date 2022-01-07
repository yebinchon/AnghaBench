
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {TYPE_1__* trips; } ;
struct TYPE_2__ {int temp; } ;


 int EINVAL ;
 int MLXSW_THERMAL_NUM_TRIPS ;
 size_t MLXSW_THERMAL_TEMP_TRIP_CRIT ;

__attribute__((used)) static int
mlxsw_thermal_module_trip_temp_set(struct thermal_zone_device *tzdev,
       int trip, int temp)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;

 if (trip < 0 || trip >= MLXSW_THERMAL_NUM_TRIPS ||
     temp > tz->trips[MLXSW_THERMAL_TEMP_TRIP_CRIT].temp)
  return -EINVAL;

 tz->trips[trip].temp = temp;
 return 0;
}
