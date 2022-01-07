
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct i2c_client {int name; TYPE_1__ dev; } ;


 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int m_compass_gr ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int hmc6352_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 int res;

 res = sysfs_create_group(&client->dev.kobj, &m_compass_gr);
 if (res) {
  dev_err(&client->dev, "device_create_file failed\n");
  return res;
 }
 dev_info(&client->dev, "%s HMC6352 compass chip found\n",
       client->name);
 return 0;
}
