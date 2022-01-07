
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int als_set_default_config(struct i2c_client *client)
{
 int retval;

 retval = i2c_smbus_write_byte_data(client, 0x00, 0xc0);
 if (retval < 0) {
  dev_err(&client->dev, "default write failed.");
  return retval;
 }
 return 0;
}
