
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 int i2c_write (struct i2c_adapter*,int ,int *,int) ;

__attribute__((used)) static int i2c_write_reg(struct i2c_adapter *adap, u8 adr,
    u8 reg, u8 val)
{
 u8 msg[2] = {reg, val};

 return i2c_write(adap, adr, msg, 2);
}
