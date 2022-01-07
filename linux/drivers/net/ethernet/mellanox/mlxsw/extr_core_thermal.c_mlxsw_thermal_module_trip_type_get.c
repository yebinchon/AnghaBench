
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {TYPE_1__* trips; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int MLXSW_THERMAL_NUM_TRIPS ;

__attribute__((used)) static int
mlxsw_thermal_module_trip_type_get(struct thermal_zone_device *tzdev, int trip,
       enum thermal_trip_type *p_type)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;

 if (trip < 0 || trip >= MLXSW_THERMAL_NUM_TRIPS)
  return -EINVAL;

 *p_type = tz->trips[trip].type;
 return 0;
}
