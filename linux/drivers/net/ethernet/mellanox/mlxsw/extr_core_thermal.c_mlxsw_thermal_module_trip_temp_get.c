
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

__attribute__((used)) static int
mlxsw_thermal_module_trip_temp_get(struct thermal_zone_device *tzdev,
       int trip, int *p_temp)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;

 if (trip < 0 || trip >= MLXSW_THERMAL_NUM_TRIPS)
  return -EINVAL;

 *p_temp = tz->trips[trip].temp;
 return 0;
}
