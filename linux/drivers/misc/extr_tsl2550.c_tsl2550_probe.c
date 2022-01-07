
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tsl2550_data {int operating_mode; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int* platform_data; int kobj; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 char* DRIVER_VERSION ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct tsl2550_data*) ;
 int kfree (struct tsl2550_data*) ;
 struct tsl2550_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int tsl2550_attr_group ;
 int tsl2550_init_client (struct i2c_client*) ;

__attribute__((used)) static int tsl2550_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct tsl2550_data *data;
 int *opmode, err = 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WRITE_BYTE
         | I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
  err = -EIO;
  goto exit;
 }

 data = kzalloc(sizeof(struct tsl2550_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }
 data->client = client;
 i2c_set_clientdata(client, data);


 opmode = client->dev.platform_data;
 if (opmode) {
  if (*opmode < 0 || *opmode > 1) {
   dev_err(&client->dev, "invalid operating_mode (%d)\n",
     *opmode);
   err = -EINVAL;
   goto exit_kfree;
  }
  data->operating_mode = *opmode;
 } else
  data->operating_mode = 0;
 dev_info(&client->dev, "%s operating mode\n",
   data->operating_mode ? "extended" : "standard");

 mutex_init(&data->update_lock);


 err = tsl2550_init_client(client);
 if (err)
  goto exit_kfree;


 err = sysfs_create_group(&client->dev.kobj, &tsl2550_attr_group);
 if (err)
  goto exit_kfree;

 dev_info(&client->dev, "support ver. %s enabled\n", DRIVER_VERSION);

 return 0;

exit_kfree:
 kfree(data);
exit:
 return err;
}
