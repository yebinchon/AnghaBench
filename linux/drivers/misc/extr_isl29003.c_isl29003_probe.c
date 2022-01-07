
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl29003_data {int lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int DRIVER_VERSION ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct isl29003_data*) ;
 int isl29003_attr_group ;
 int isl29003_init_client (struct i2c_client*) ;
 int kfree (struct isl29003_data*) ;
 struct isl29003_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int isl29003_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct isl29003_data *data;
 int err = 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE))
  return -EIO;

 data = kzalloc(sizeof(struct isl29003_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);


 err = isl29003_init_client(client);
 if (err)
  goto exit_kfree;


 err = sysfs_create_group(&client->dev.kobj, &isl29003_attr_group);
 if (err)
  goto exit_kfree;

 dev_info(&client->dev, "driver version %s enabled\n", DRIVER_VERSION);
 return 0;

exit_kfree:
 kfree(data);
 return err;
}
