
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_thermal_module {int * parent; int * tzdev; } ;


 int mlxsw_thermal_module_tz_fini (int *) ;

__attribute__((used)) static void mlxsw_thermal_module_fini(struct mlxsw_thermal_module *module_tz)
{
 if (module_tz && module_tz->tzdev) {
  mlxsw_thermal_module_tz_fini(module_tz->tzdev);
  module_tz->tzdev = ((void*)0);
  module_tz->parent = ((void*)0);
 }
}
