
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {int mode; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;



__attribute__((used)) static int mlxsw_thermal_module_mode_get(struct thermal_zone_device *tzdev,
      enum thermal_device_mode *mode)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;

 *mode = tz->mode;

 return 0;
}
