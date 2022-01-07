
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct smiapp_sensor {int dummy; } ;


 int SMIAPP_REG_MK_U8 (int ) ;
 int smiapp_write (struct smiapp_sensor*,int ,int ) ;

__attribute__((used)) static int smiapp_write_8(struct smiapp_sensor *sensor, u16 reg, u8 val)
{
 return smiapp_write(sensor, SMIAPP_REG_MK_U8(reg), val);
}
