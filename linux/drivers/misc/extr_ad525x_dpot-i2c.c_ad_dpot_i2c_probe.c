
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int name; int driver_data; } ;
struct i2c_client {int dev; int adapter; } ;
struct ad_dpot_bus_data {int * bops; struct i2c_client* client; } ;


 int EIO ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int ad_dpot_probe (int *,struct ad_dpot_bus_data*,int ,int ) ;
 int bops ;
 int dev_err (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;

__attribute__((used)) static int ad_dpot_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct ad_dpot_bus_data bdata = {
  .client = client,
  .bops = &bops,
 };

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_err(&client->dev, "SMBUS Word Data not Supported\n");
  return -EIO;
 }

 return ad_dpot_probe(&client->dev, &bdata, id->driver_data, id->name);
}
