
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_thermal {TYPE_1__* bus_info; int ** cdevs; int * tzdev; } ;
struct TYPE_2__ {int dev; } ;


 int MLXSW_MFCR_PWMS_MAX ;
 int devm_kfree (int ,struct mlxsw_thermal*) ;
 int mlxsw_thermal_gearboxes_fini (struct mlxsw_thermal*) ;
 int mlxsw_thermal_modules_fini (struct mlxsw_thermal*) ;
 int thermal_cooling_device_unregister (int *) ;
 int thermal_zone_device_unregister (int *) ;

void mlxsw_thermal_fini(struct mlxsw_thermal *thermal)
{
 int i;

 mlxsw_thermal_gearboxes_fini(thermal);
 mlxsw_thermal_modules_fini(thermal);
 if (thermal->tzdev) {
  thermal_zone_device_unregister(thermal->tzdev);
  thermal->tzdev = ((void*)0);
 }

 for (i = 0; i < MLXSW_MFCR_PWMS_MAX; i++) {
  if (thermal->cdevs[i]) {
   thermal_cooling_device_unregister(thermal->cdevs[i]);
   thermal->cdevs[i] = ((void*)0);
  }
 }

 devm_kfree(thermal->bus_info->dev, thermal);
}
