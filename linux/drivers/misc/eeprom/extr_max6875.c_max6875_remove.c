
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max6875_data {int fake_client; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 struct max6875_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct max6875_data*) ;
 int sysfs_remove_bin_file (int *,int *) ;
 int user_eeprom_attr ;

__attribute__((used)) static int max6875_remove(struct i2c_client *client)
{
 struct max6875_data *data = i2c_get_clientdata(client);

 i2c_unregister_device(data->fake_client);

 sysfs_remove_bin_file(&client->dev.kobj, &user_eeprom_attr);
 kfree(data);

 return 0;
}
