
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int type; } ;
struct mlxsw_thermal {struct thermal_cooling_device** cdevs; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int MLXSW_MFCR_PWMS_MAX ;
 int * mlxsw_thermal_external_allowed_cdev ;
 scalar_t__ strnstr (int ,int ,int) ;

__attribute__((used)) static int mlxsw_get_cooling_device_idx(struct mlxsw_thermal *thermal,
     struct thermal_cooling_device *cdev)
{
 int i;

 for (i = 0; i < MLXSW_MFCR_PWMS_MAX; i++)
  if (thermal->cdevs[i] == cdev)
   return i;


 for (i = 0; i < ARRAY_SIZE(mlxsw_thermal_external_allowed_cdev); i++) {
  if (strnstr(cdev->type, mlxsw_thermal_external_allowed_cdev[i],
       sizeof(cdev->type)))
   return 0;
 }

 return -ENODEV;
}
