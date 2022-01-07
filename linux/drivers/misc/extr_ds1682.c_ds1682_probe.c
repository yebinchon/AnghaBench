
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; int adapter; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int dev_err (TYPE_1__*,char*) ;
 int ds1682_eeprom_attr ;
 int ds1682_group ;
 int i2c_check_functionality (int ,int ) ;
 int sysfs_create_bin_file (int *,int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ds1682_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int rc;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_I2C_BLOCK)) {
  dev_err(&client->dev, "i2c bus does not support the ds1682\n");
  rc = -ENODEV;
  goto exit;
 }

 rc = sysfs_create_group(&client->dev.kobj, &ds1682_group);
 if (rc)
  goto exit;

 rc = sysfs_create_bin_file(&client->dev.kobj, &ds1682_eeprom_attr);
 if (rc)
  goto exit_bin_attr;

 return 0;

 exit_bin_attr:
 sysfs_remove_group(&client->dev.kobj, &ds1682_group);
 exit:
 return rc;
}
