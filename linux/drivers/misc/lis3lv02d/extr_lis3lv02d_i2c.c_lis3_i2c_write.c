
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {struct i2c_client* bus_priv; } ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static inline s32 lis3_i2c_write(struct lis3lv02d *lis3, int reg, u8 value)
{
 struct i2c_client *c = lis3->bus_priv;
 return i2c_smbus_write_byte_data(c, reg, value);
}
