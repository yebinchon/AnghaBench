
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_word_swapped (struct i2c_client*,int const,int const) ;

__attribute__((used)) static int reg_write(struct i2c_client *client, const u8 reg,
       const u16 data)
{
 return i2c_smbus_write_word_swapped(client, reg, data);
}
