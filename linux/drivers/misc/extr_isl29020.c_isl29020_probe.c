
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; int name; } ;


 int als_set_default_config (struct i2c_client*) ;
 int als_set_power_state (struct i2c_client*,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int m_als_gr ;
 int pm_runtime_enable (TYPE_1__*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int isl29020_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 int res;

 res = als_set_default_config(client);
 if (res < 0)
  return res;

 res = sysfs_create_group(&client->dev.kobj, &m_als_gr);
 if (res) {
  dev_err(&client->dev, "isl29020: device create file failed\n");
  return res;
 }
 dev_info(&client->dev, "%s isl29020: ALS chip found\n", client->name);
 als_set_power_state(client, 0);
 pm_runtime_enable(&client->dev);
 return res;
}
