
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct mlxsw_thermal* devdata; } ;
struct thermal_cooling_device {int dummy; } ;
struct mlxsw_thermal_trip {int min_state; int max_state; } ;
struct mlxsw_thermal {struct mlxsw_thermal_trip* trips; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int MLXSW_THERMAL_NUM_TRIPS ;
 int THERMAL_WEIGHT_DEFAULT ;
 int dev_err (struct device*,char*,int) ;
 scalar_t__ mlxsw_get_cooling_device_idx (struct mlxsw_thermal*,struct thermal_cooling_device*) ;
 int thermal_zone_bind_cooling_device (struct thermal_zone_device*,int,struct thermal_cooling_device*,int ,int ,int ) ;

__attribute__((used)) static int mlxsw_thermal_bind(struct thermal_zone_device *tzdev,
         struct thermal_cooling_device *cdev)
{
 struct mlxsw_thermal *thermal = tzdev->devdata;
 struct device *dev = thermal->bus_info->dev;
 int i, err;


 if (mlxsw_get_cooling_device_idx(thermal, cdev) < 0)
  return 0;

 for (i = 0; i < MLXSW_THERMAL_NUM_TRIPS; i++) {
  const struct mlxsw_thermal_trip *trip = &thermal->trips[i];

  err = thermal_zone_bind_cooling_device(tzdev, i, cdev,
             trip->max_state,
             trip->min_state,
             THERMAL_WEIGHT_DEFAULT);
  if (err < 0) {
   dev_err(dev, "Failed to bind cooling device to trip %d\n", i);
   return err;
  }
 }
 return 0;
}
