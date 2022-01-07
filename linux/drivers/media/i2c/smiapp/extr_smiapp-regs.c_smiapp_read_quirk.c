
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct smiapp_sensor {int dummy; } ;


 int ENOIOCTLCMD ;
 int __smiapp_read (struct smiapp_sensor*,scalar_t__,scalar_t__*,int) ;
 int reg_access ;
 int smiapp_call_quirk (struct smiapp_sensor*,int ,int,scalar_t__*,scalar_t__*) ;
 int smiapp_read_no_quirk (struct smiapp_sensor*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int smiapp_read_quirk(struct smiapp_sensor *sensor, u32 reg, u32 *val,
        bool force8)
{
 int rval;

 *val = 0;
 rval = smiapp_call_quirk(sensor, reg_access, 0, &reg, val);
 if (rval == -ENOIOCTLCMD)
  return 0;
 if (rval < 0)
  return rval;

 if (force8)
  return __smiapp_read(sensor, reg, val, 1);

 return smiapp_read_no_quirk(sensor, reg, val);
}
