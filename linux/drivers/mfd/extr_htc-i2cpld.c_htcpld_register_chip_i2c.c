
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct i2c_client {int addr; int name; } ;
struct i2c_board_info {struct htcpld_chip* platform_data; int type; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct htcpld_data {struct htcpld_chip* chip; } ;
struct htcpld_core_platform_data {int i2c_adapter_id; struct htcpld_chip_platform_data* chip; } ;
struct htcpld_chip_platform_data {int addr; } ;
struct htcpld_chip {int cache_out; int cache_in; struct i2c_client* client; } ;


 int EINVAL ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 struct htcpld_core_platform_data* dev_get_platdata (struct device*) ;
 int dev_warn (struct device*,char*,int ,...) ;
 int htcpld_chip_reset (struct i2c_client*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_set_clientdata (struct i2c_client*,struct htcpld_chip*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int memset (struct i2c_board_info*,int ,int) ;
 struct htcpld_data* platform_get_drvdata (struct platform_device*) ;
 int snprintf (int ,int ,char*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int htcpld_register_chip_i2c(
  struct platform_device *pdev,
  int chip_index)
{
 struct htcpld_data *htcpld;
 struct device *dev = &pdev->dev;
 struct htcpld_core_platform_data *pdata;
 struct htcpld_chip *chip;
 struct htcpld_chip_platform_data *plat_chip_data;
 struct i2c_adapter *adapter;
 struct i2c_client *client;
 struct i2c_board_info info;


 pdata = dev_get_platdata(dev);
 htcpld = platform_get_drvdata(pdev);
 chip = &htcpld->chip[chip_index];
 plat_chip_data = &pdata->chip[chip_index];

 adapter = i2c_get_adapter(pdata->i2c_adapter_id);
 if (!adapter) {

  dev_warn(dev, "Chip at i2c address 0x%x: Invalid i2c adapter %d\n",
    plat_chip_data->addr, pdata->i2c_adapter_id);
  return -ENODEV;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
  dev_warn(dev, "i2c adapter %d non-functional\n",
    pdata->i2c_adapter_id);
  return -EINVAL;
 }

 memset(&info, 0, sizeof(struct i2c_board_info));
 info.addr = plat_chip_data->addr;
 strlcpy(info.type, "htcpld-chip", I2C_NAME_SIZE);
 info.platform_data = chip;


 client = i2c_new_device(adapter, &info);
 if (!client) {

  dev_warn(dev, "Unable to add I2C device for 0x%x\n",
    plat_chip_data->addr);
  return -ENODEV;
 }

 i2c_set_clientdata(client, chip);
 snprintf(client->name, I2C_NAME_SIZE, "Chip_0x%x", client->addr);
 chip->client = client;


 htcpld_chip_reset(client);
 chip->cache_in = i2c_smbus_read_byte_data(client, chip->cache_out);

 return 0;
}
