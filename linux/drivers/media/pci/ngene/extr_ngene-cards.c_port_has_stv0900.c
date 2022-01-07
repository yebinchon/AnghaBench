
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ i2c_read_reg16 (struct i2c_adapter*,int,int,int *) ;

__attribute__((used)) static int port_has_stv0900(struct i2c_adapter *i2c, int port)
{
 u8 val;
 if (i2c_read_reg16(i2c, 0x68+port/2, 0xf100, &val) < 0)
  return 0;
 return 1;
}
