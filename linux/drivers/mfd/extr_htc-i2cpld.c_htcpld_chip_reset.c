
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct htcpld_chip {int reset; int cache_out; } ;


 struct htcpld_chip* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static void htcpld_chip_reset(struct i2c_client *client)
{
 struct htcpld_chip *chip_data = i2c_get_clientdata(client);
 if (!chip_data)
  return;

 i2c_smbus_read_byte_data(
  client, (chip_data->cache_out = chip_data->reset));
}
