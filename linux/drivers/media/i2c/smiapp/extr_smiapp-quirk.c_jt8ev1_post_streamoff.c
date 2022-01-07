
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smiapp_sensor {int dummy; } ;


 int smiapp_write_8 (struct smiapp_sensor*,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int jt8ev1_post_streamoff(struct smiapp_sensor *sensor)
{
 int rval;


 rval = smiapp_write_8(sensor, 0x3205, 0x04);
 if (rval < 0)
  return rval;


 usleep_range(2000, 2050);


 rval = smiapp_write_8(sensor, 0x3205, 0x00);
 if (rval < 0)
  return rval;

 return smiapp_write_8(sensor, 0x3328, 0x80);
}
