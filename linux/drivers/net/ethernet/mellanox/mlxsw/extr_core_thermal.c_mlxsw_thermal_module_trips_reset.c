
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_thermal_module {TYPE_1__* trips; } ;
struct TYPE_2__ {scalar_t__ temp; } ;


 size_t MLXSW_THERMAL_TEMP_TRIP_CRIT ;
 size_t MLXSW_THERMAL_TEMP_TRIP_HIGH ;
 size_t MLXSW_THERMAL_TEMP_TRIP_HOT ;
 size_t MLXSW_THERMAL_TEMP_TRIP_NORM ;

__attribute__((used)) static void
mlxsw_thermal_module_trips_reset(struct mlxsw_thermal_module *tz)
{
 tz->trips[MLXSW_THERMAL_TEMP_TRIP_NORM].temp = 0;
 tz->trips[MLXSW_THERMAL_TEMP_TRIP_HIGH].temp = 0;
 tz->trips[MLXSW_THERMAL_TEMP_TRIP_HOT].temp = 0;
 tz->trips[MLXSW_THERMAL_TEMP_TRIP_CRIT].temp = 0;
}
