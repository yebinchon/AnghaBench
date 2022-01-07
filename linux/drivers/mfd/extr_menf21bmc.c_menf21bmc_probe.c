
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int BMC_CMD_REV_MAIN ;
 int BMC_CMD_REV_MAJOR ;
 int BMC_CMD_REV_MINOR ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int,int) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int *) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int menf21bmc_cell ;
 int menf21bmc_wdt_exit_prod_mode (struct i2c_client*) ;

__attribute__((used)) static int
menf21bmc_probe(struct i2c_client *client, const struct i2c_device_id *ids)
{
 int rev_major, rev_minor, rev_main;
 int ret;

 ret = i2c_check_functionality(client->adapter,
          I2C_FUNC_SMBUS_BYTE_DATA |
          I2C_FUNC_SMBUS_WORD_DATA |
          I2C_FUNC_SMBUS_BYTE);
 if (!ret)
  return -ENODEV;

 rev_major = i2c_smbus_read_word_data(client, BMC_CMD_REV_MAJOR);
 if (rev_major < 0) {
  dev_err(&client->dev, "failed to get BMC major revision\n");
  return rev_major;
 }

 rev_minor = i2c_smbus_read_word_data(client, BMC_CMD_REV_MINOR);
 if (rev_minor < 0) {
  dev_err(&client->dev, "failed to get BMC minor revision\n");
  return rev_minor;
 }

 rev_main = i2c_smbus_read_word_data(client, BMC_CMD_REV_MAIN);
 if (rev_main < 0) {
  dev_err(&client->dev, "failed to get BMC main revision\n");
  return rev_main;
 }

 dev_info(&client->dev, "FW Revision: %02d.%02d.%02d\n",
   rev_major, rev_minor, rev_main);





 ret = menf21bmc_wdt_exit_prod_mode(client);
 if (ret < 0) {
  dev_err(&client->dev, "failed to leave production mode\n");
  return ret;
 }

 ret = devm_mfd_add_devices(&client->dev, 0, menf21bmc_cell,
       ARRAY_SIZE(menf21bmc_cell), ((void*)0), 0, ((void*)0));
 if (ret < 0) {
  dev_err(&client->dev, "failed to add BMC sub-devices\n");
  return ret;
 }

 return 0;
}
