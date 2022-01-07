
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smiapp_sensor {scalar_t__* limits; } ;


 unsigned int SMIAPP_LIMIT_LAST ;
 size_t SMIAPP_LIMIT_SCALER_N_MIN ;
 int smiapp_get_limits (struct smiapp_sensor*,unsigned int*,int) ;
 int smiapp_replace_limit (struct smiapp_sensor*,size_t,int) ;

__attribute__((used)) static int smiapp_get_all_limits(struct smiapp_sensor *sensor)
{
 unsigned int i;
 int rval;

 for (i = 0; i < SMIAPP_LIMIT_LAST; i++) {
  rval = smiapp_get_limits(sensor, &i, 1);
  if (rval < 0)
   return rval;
 }

 if (sensor->limits[SMIAPP_LIMIT_SCALER_N_MIN] == 0)
  smiapp_replace_limit(sensor, SMIAPP_LIMIT_SCALER_N_MIN, 16);

 return 0;
}
