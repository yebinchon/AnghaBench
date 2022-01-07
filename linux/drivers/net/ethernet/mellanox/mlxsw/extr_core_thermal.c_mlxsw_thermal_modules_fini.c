
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_thermal {int * tz_module_arr; int core; } ;


 int kfree (int *) ;
 unsigned int mlxsw_core_max_ports (int ) ;
 int mlxsw_core_res_query_enabled (int ) ;
 int mlxsw_thermal_module_fini (int *) ;

__attribute__((used)) static void
mlxsw_thermal_modules_fini(struct mlxsw_thermal *thermal)
{
 unsigned int module_count = mlxsw_core_max_ports(thermal->core);
 int i;

 if (!mlxsw_core_res_query_enabled(thermal->core))
  return;

 for (i = module_count - 1; i >= 0; i--)
  mlxsw_thermal_module_fini(&thermal->tz_module_arr[i]);
 kfree(thermal->tz_module_arr);
}
