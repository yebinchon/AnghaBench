
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_read_regs(struct i2c_adapter *adapter,
    u8 adr, u8 reg, u8 *val, u8 len)
{
 struct i2c_msg msgs[2] = {{.addr = adr, .flags = 0,
       .buf = &reg, .len = 1},
      {.addr = adr, .flags = I2C_M_RD,
       .buf = val, .len = len} };

 return (i2c_transfer(adapter, msgs, 2) == 2) ? 0 : -1;
}
