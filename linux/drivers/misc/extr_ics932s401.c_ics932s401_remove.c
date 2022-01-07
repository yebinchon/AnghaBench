
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ics932s401_data {int attrs; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 struct ics932s401_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ics932s401_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ics932s401_remove(struct i2c_client *client)
{
 struct ics932s401_data *data = i2c_get_clientdata(client);

 sysfs_remove_group(&client->dev.kobj, &data->attrs);
 kfree(data);
 return 0;
}
