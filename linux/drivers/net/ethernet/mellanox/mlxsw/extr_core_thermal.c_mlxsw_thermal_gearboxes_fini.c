
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_thermal {int tz_gearbox_num; int * tz_gearbox_arr; int core; } ;


 int kfree (int *) ;
 int mlxsw_core_res_query_enabled (int ) ;
 int mlxsw_thermal_gearbox_tz_fini (int *) ;

__attribute__((used)) static void
mlxsw_thermal_gearboxes_fini(struct mlxsw_thermal *thermal)
{
 int i;

 if (!mlxsw_core_res_query_enabled(thermal->core))
  return;

 for (i = thermal->tz_gearbox_num - 1; i >= 0; i--)
  mlxsw_thermal_gearbox_tz_fini(&thermal->tz_gearbox_arr[i]);
 kfree(thermal->tz_gearbox_arr);
}
