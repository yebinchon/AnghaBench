
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct mlxsw_thermal_trip {int temp; } ;
struct mlxsw_thermal {unsigned int tz_highest_score; struct thermal_zone_device* tz_highest_dev; } ;


 unsigned int DIV_ROUND_CLOSEST (int,int) ;
 unsigned int MLXSW_THERMAL_NUM_TRIPS ;
 unsigned int MLXSW_THERMAL_TEMP_SCORE_MAX ;
 unsigned int MLXSW_THERMAL_TEMP_TRIP_NORM ;

__attribute__((used)) static void mlxsw_thermal_tz_score_update(struct mlxsw_thermal *thermal,
       struct thermal_zone_device *tzdev,
       struct mlxsw_thermal_trip *trips,
       int temp)
{
 struct mlxsw_thermal_trip *trip = trips;
 unsigned int score, delta, i, shift = 1;




 score = MLXSW_THERMAL_TEMP_SCORE_MAX;
 for (i = MLXSW_THERMAL_TEMP_TRIP_NORM; i < MLXSW_THERMAL_NUM_TRIPS;
      i++, trip++) {
  if (temp < trip->temp) {
   delta = DIV_ROUND_CLOSEST(temp, trip->temp - temp);
   score = delta * shift;
   break;
  }
  shift *= 256;
 }

 if (score > thermal->tz_highest_score) {
  thermal->tz_highest_score = score;
  thermal->tz_highest_dev = tzdev;
 }
}
