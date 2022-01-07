
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int lock; int polling_delay; struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {int mode; int polling_delay; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int THERMAL_DEVICE_ENABLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thermal_zone_device_update (struct thermal_zone_device*,int ) ;

__attribute__((used)) static int mlxsw_thermal_set_mode(struct thermal_zone_device *tzdev,
      enum thermal_device_mode mode)
{
 struct mlxsw_thermal *thermal = tzdev->devdata;

 mutex_lock(&tzdev->lock);

 if (mode == THERMAL_DEVICE_ENABLED)
  tzdev->polling_delay = thermal->polling_delay;
 else
  tzdev->polling_delay = 0;

 mutex_unlock(&tzdev->lock);

 thermal->mode = mode;
 thermal_zone_device_update(tzdev, THERMAL_EVENT_UNSPECIFIED);

 return 0;
}
