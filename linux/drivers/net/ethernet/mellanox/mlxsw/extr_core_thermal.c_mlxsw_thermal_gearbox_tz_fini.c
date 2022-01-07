
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_thermal_module {int tzdev; } ;


 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static void
mlxsw_thermal_gearbox_tz_fini(struct mlxsw_thermal_module *gearbox_tz)
{
 thermal_zone_device_unregister(gearbox_tz->tzdev);
}
