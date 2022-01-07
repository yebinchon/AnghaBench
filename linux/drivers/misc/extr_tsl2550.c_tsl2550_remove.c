
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;
 int sysfs_remove_group (int *,int *) ;
 int tsl2550_attr_group ;
 int tsl2550_set_power_state (struct i2c_client*,int ) ;

__attribute__((used)) static int tsl2550_remove(struct i2c_client *client)
{
 sysfs_remove_group(&client->dev.kobj, &tsl2550_attr_group);


 tsl2550_set_power_state(client, 0);

 kfree(i2c_get_clientdata(client));

 return 0;
}
