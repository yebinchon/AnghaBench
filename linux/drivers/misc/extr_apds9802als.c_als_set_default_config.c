
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int als_wait_for_data_ready (int *) ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int als_set_default_config(struct i2c_client *client)
{
 int ret_val;

 ret_val = i2c_smbus_write_byte_data(client, 0x80, 0x01);
 if (ret_val < 0) {
  dev_err(&client->dev, "failed default switch on write\n");
  return ret_val;
 }

 ret_val = i2c_smbus_write_byte_data(client, 0x81, 0x08);
 if (ret_val < 0)
  dev_err(&client->dev, "failed default LUX on write\n");




 als_wait_for_data_ready(&client->dev);

 return ret_val;
}
