
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {TYPE_1__* trips; } ;
struct TYPE_2__ {int hyst; } ;



__attribute__((used)) static int mlxsw_thermal_get_trip_hyst(struct thermal_zone_device *tzdev,
           int trip, int *p_hyst)
{
 struct mlxsw_thermal *thermal = tzdev->devdata;

 *p_hyst = thermal->trips[trip].hyst;
 return 0;
}
