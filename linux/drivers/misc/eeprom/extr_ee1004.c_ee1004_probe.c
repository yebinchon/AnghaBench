
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {int kobj; } ;
struct i2c_client {TYPE_4__ dev; int adapter; } ;
struct TYPE_10__ {int adapter; } ;


 scalar_t__ EE1004_ADDR_SET_PAGE ;
 int EE1004_EEPROM_SIZE ;
 int EOPNOTSUPP ;
 int EPFNOSUPPORT ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_dbg (TYPE_4__*,char*,int) ;
 int dev_err (TYPE_4__*,char*,...) ;
 int dev_info (TYPE_4__*,char*,int ) ;
 int dev_notice (TYPE_4__*,char*,char const*) ;
 int ee1004_bus_lock ;
 int ee1004_current_page ;
 int ee1004_dev_count ;
 int ee1004_get_current_page () ;
 TYPE_1__** ee1004_set_page ;
 int eeprom_attr ;
 scalar_t__ i2c_adapter_id (int ) ;
 scalar_t__ i2c_check_functionality (int ,int) ;
 TYPE_1__* i2c_new_dummy_device (int ,scalar_t__) ;
 int i2c_unregister_device (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_create_bin_file (int *,int *) ;

__attribute__((used)) static int ee1004_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int err, cnr = 0;
 const char *slow = ((void*)0);


 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_BYTE |
         I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
  if (i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_BYTE |
         I2C_FUNC_SMBUS_READ_WORD_DATA))
   slow = "word";
  else if (i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_BYTE |
         I2C_FUNC_SMBUS_READ_BYTE_DATA))
   slow = "byte";
  else
   return -EPFNOSUPPORT;
 }


 mutex_lock(&ee1004_bus_lock);
 if (++ee1004_dev_count == 1) {
  for (cnr = 0; cnr < 2; cnr++) {
   ee1004_set_page[cnr] = i2c_new_dummy_device(client->adapter,
      EE1004_ADDR_SET_PAGE + cnr);
   if (IS_ERR(ee1004_set_page[cnr])) {
    dev_err(&client->dev,
     "address 0x%02x unavailable\n",
     EE1004_ADDR_SET_PAGE + cnr);
    err = PTR_ERR(ee1004_set_page[cnr]);
    goto err_clients;
   }
  }
 } else if (i2c_adapter_id(client->adapter) !=
     i2c_adapter_id(ee1004_set_page[0]->adapter)) {
  dev_err(&client->dev,
   "Driver only supports devices on a single I2C bus\n");
  err = -EOPNOTSUPP;
  goto err_clients;
 }


 err = ee1004_get_current_page();
 if (err < 0)
  goto err_clients;
 ee1004_current_page = err;
 dev_dbg(&client->dev, "Currently selected page: %d\n",
  ee1004_current_page);
 mutex_unlock(&ee1004_bus_lock);


 err = sysfs_create_bin_file(&client->dev.kobj, &eeprom_attr);
 if (err)
  goto err_clients_lock;

 dev_info(&client->dev,
   "%u byte EE1004-compliant SPD EEPROM, read-only\n",
   EE1004_EEPROM_SIZE);
 if (slow)
  dev_notice(&client->dev,
      "Falling back to %s reads, performance will suffer\n",
      slow);

 return 0;

 err_clients_lock:
 mutex_lock(&ee1004_bus_lock);
 err_clients:
 if (--ee1004_dev_count == 0) {
  for (cnr--; cnr >= 0; cnr--) {
   i2c_unregister_device(ee1004_set_page[cnr]);
   ee1004_set_page[cnr] = ((void*)0);
  }
 }
 mutex_unlock(&ee1004_bus_lock);

 return err;
}
