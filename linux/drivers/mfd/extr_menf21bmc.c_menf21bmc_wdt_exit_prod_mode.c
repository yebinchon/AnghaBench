
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int BMC_CMD_WDT_EXIT_PROD ;
 int BMC_CMD_WDT_PROD_STAT ;
 int dev_info (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int menf21bmc_wdt_exit_prod_mode(struct i2c_client *client)
{
 int val, ret;

 val = i2c_smbus_read_byte_data(client, BMC_CMD_WDT_PROD_STAT);
 if (val < 0)
  return val;






 if (val == 0x00) {
  dev_info(&client->dev,
   "BMC in production mode. Exit production mode\n");

  ret = i2c_smbus_write_byte(client, BMC_CMD_WDT_EXIT_PROD);
  if (ret < 0)
   return ret;
 }

 return 0;
}
