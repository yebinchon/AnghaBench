
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int mt9t001_write(struct i2c_client *client, u8 reg, u16 data)
{
 return i2c_smbus_write_word_swapped(client, reg, data);
}
