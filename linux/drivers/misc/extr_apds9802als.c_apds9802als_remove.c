
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct als_data {int dummy; } ;


 int als_set_power_state (struct i2c_client*,int) ;
 struct als_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct als_data*) ;
 int m_als_gr ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put_noidle (TYPE_1__*) ;
 int pm_runtime_set_suspended (TYPE_1__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int apds9802als_remove(struct i2c_client *client)
{
 struct als_data *data = i2c_get_clientdata(client);

 pm_runtime_get_sync(&client->dev);

 als_set_power_state(client, 0);
 sysfs_remove_group(&client->dev.kobj, &m_als_gr);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 kfree(data);
 return 0;
}
