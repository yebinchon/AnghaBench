
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {struct i2c_client* bus_priv; } ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int,int,int *) ;

__attribute__((used)) static inline s32 lis3_i2c_blockread(struct lis3lv02d *lis3, int reg, int len,
    u8 *v)
{
 struct i2c_client *c = lis3->bus_priv;
 reg |= (1 << 7);
 return i2c_smbus_read_i2c_block_data(c, reg, len, v);
}
