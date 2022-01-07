
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static void als_set_power_state(struct i2c_client *client, int enable)
{
 int ret_val;

 ret_val = i2c_smbus_read_byte_data(client, 0x00);
 if (ret_val < 0)
  return;

 if (enable)
  ret_val |= 0x80;
 else
  ret_val &= 0x7F;

 i2c_smbus_write_byte_data(client, 0x00, ret_val);
}
