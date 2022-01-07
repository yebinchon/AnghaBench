
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ i2c_read_reg16 (struct i2c_adapter*,int,int,int*) ;

__attribute__((used)) static int port_has_stv0367(struct i2c_adapter *i2c)
{
 u8 val;

 if (i2c_read_reg16(i2c, 0x1e, 0xf000, &val) < 0)
  return 0;
 if (val != 0x60)
  return 0;
 if (i2c_read_reg16(i2c, 0x1f, 0xf000, &val) < 0)
  return 0;
 if (val != 0x60)
  return 0;
 return 1;
}
