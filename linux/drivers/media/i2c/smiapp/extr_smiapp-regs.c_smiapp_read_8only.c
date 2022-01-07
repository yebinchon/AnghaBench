
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smiapp_sensor {int dummy; } ;


 int smiapp_read_quirk (struct smiapp_sensor*,int ,int *,int) ;

int smiapp_read_8only(struct smiapp_sensor *sensor, u32 reg, u32 *val)
{
 return smiapp_read_quirk(sensor, reg, val, 1);
}
