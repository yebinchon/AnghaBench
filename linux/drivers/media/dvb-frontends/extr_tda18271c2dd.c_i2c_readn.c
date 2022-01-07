
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_readn(struct i2c_adapter *adapter, u8 adr, u8 *data, int len)
{
 struct i2c_msg msgs[1] = {{.addr = adr, .flags = I2C_M_RD,
       .buf = data, .len = len} };
 return (i2c_transfer(adapter, msgs, 1) == 1) ? 0 : -1;
}
