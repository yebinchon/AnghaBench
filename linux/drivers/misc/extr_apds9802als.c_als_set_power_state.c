
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct als_data {int mutex; } ;


 struct als_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int als_set_power_state(struct i2c_client *client, bool on_off)
{
 int ret_val;
 struct als_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->mutex);
 ret_val = i2c_smbus_read_byte_data(client, 0x80);
 if (ret_val < 0)
  goto fail;
 if (on_off)
  ret_val = ret_val | 0x01;
 else
  ret_val = ret_val & 0xFE;
 ret_val = i2c_smbus_write_byte_data(client, 0x80, ret_val);
fail:
 mutex_unlock(&data->mutex);
 return ret_val;
}
