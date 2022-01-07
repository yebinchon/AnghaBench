
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smiapp_sensor {int dummy; } ;


 int smiapp_write_8 (struct smiapp_sensor*,int,int) ;

__attribute__((used)) static int jt8ev1_pre_streamon(struct smiapp_sensor *sensor)
{
 return smiapp_write_8(sensor, 0x3328, 0x00);
}
