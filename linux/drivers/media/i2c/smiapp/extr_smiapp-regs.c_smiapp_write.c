
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smiapp_sensor {int dummy; } ;


 int ENOIOCTLCMD ;
 int reg_access ;
 int smiapp_call_quirk (struct smiapp_sensor*,int ,int,int *,int *) ;
 int smiapp_write_no_quirk (struct smiapp_sensor*,int ,int ) ;

int smiapp_write(struct smiapp_sensor *sensor, u32 reg, u32 val)
{
 int rval;

 rval = smiapp_call_quirk(sensor, reg_access, 1, &reg, &val);
 if (rval == -ENOIOCTLCMD)
  return 0;
 if (rval < 0)
  return rval;

 return smiapp_write_no_quirk(sensor, reg, val);
}
