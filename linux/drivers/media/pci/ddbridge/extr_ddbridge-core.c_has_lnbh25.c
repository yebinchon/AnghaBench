
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ i2c_read_reg (struct i2c_adapter*,int ,int ,int *) ;

__attribute__((used)) static int has_lnbh25(struct i2c_adapter *i2c, u8 adr)
{
 u8 val;

 return i2c_read_reg(i2c, adr, 0, &val) ? 0 : 1;
}
