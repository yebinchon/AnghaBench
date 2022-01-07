
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct thermal_cooling_device {int dummy; } ;
struct mlxsw_thermal_module {struct mlxsw_thermal* parent; } ;
struct mlxsw_thermal {int dummy; } ;


 int MLXSW_THERMAL_NUM_TRIPS ;
 int WARN_ON (int) ;
 scalar_t__ mlxsw_get_cooling_device_idx (struct mlxsw_thermal*,struct thermal_cooling_device*) ;
 int thermal_zone_unbind_cooling_device (struct thermal_zone_device*,int,struct thermal_cooling_device*) ;

__attribute__((used)) static int mlxsw_thermal_module_unbind(struct thermal_zone_device *tzdev,
           struct thermal_cooling_device *cdev)
{
 struct mlxsw_thermal_module *tz = tzdev->devdata;
 struct mlxsw_thermal *thermal = tz->parent;
 int i;
 int err;


 if (mlxsw_get_cooling_device_idx(thermal, cdev) < 0)
  return 0;

 for (i = 0; i < MLXSW_THERMAL_NUM_TRIPS; i++) {
  err = thermal_zone_unbind_cooling_device(tzdev, i, cdev);
  WARN_ON(err);
 }
 return err;
}
