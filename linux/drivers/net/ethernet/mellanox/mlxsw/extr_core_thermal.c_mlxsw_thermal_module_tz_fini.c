
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int thermal_zone_device_unregister (struct thermal_zone_device*) ;

__attribute__((used)) static void mlxsw_thermal_module_tz_fini(struct thermal_zone_device *tzdev)
{
 thermal_zone_device_unregister(tzdev);
}
