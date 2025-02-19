
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct smiapp_sensor {int dummy; } ;


 int ____smiapp_read (struct smiapp_sensor*,unsigned int,int,unsigned int*) ;

__attribute__((used)) static int ____smiapp_read_8only(struct smiapp_sensor *sensor, u16 reg,
     u16 len, u32 *val)
{
 unsigned int i;
 int rval;

 *val = 0;

 for (i = 0; i < len; i++) {
  u32 val8;

  rval = ____smiapp_read(sensor, reg + i, 1, &val8);
  if (rval < 0)
   return rval;
  *val |= val8 << ((len - i - 1) << 3);
 }

 return 0;
}
