
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ee1004_bus_lock ;
 scalar_t__ ee1004_dev_count ;
 int ** ee1004_set_page ;
 int eeprom_attr ;
 int i2c_unregister_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static int ee1004_remove(struct i2c_client *client)
{
 int i;

 sysfs_remove_bin_file(&client->dev.kobj, &eeprom_attr);


 mutex_lock(&ee1004_bus_lock);
 if (--ee1004_dev_count == 0) {
  for (i = 0; i < 2; i++) {
   i2c_unregister_device(ee1004_set_page[i]);
   ee1004_set_page[i] = ((void*)0);
  }
 }
 mutex_unlock(&ee1004_bus_lock);

 return 0;
}
