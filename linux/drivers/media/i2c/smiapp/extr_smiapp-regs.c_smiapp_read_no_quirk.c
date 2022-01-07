
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smiapp_sensor {int dummy; } ;


 int SMIAPP_QUIRK_FLAG_8BIT_READ_ONLY ;
 int __smiapp_read (struct smiapp_sensor*,int ,int *,int ) ;
 int smiapp_needs_quirk (struct smiapp_sensor*,int ) ;

int smiapp_read_no_quirk(struct smiapp_sensor *sensor, u32 reg, u32 *val)
{
 return __smiapp_read(
  sensor, reg, val,
  smiapp_needs_quirk(sensor,
       SMIAPP_QUIRK_FLAG_8BIT_READ_ONLY));
}
