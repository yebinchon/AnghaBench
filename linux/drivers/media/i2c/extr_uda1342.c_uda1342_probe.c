
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; int dev; } ;
struct i2c_adapter {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int dev_dbg (int *,char*,int,int ) ;
 struct v4l2_subdev* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int uda1342_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 int write_reg (struct i2c_client*,int,int) ;

__attribute__((used)) static int uda1342_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct v4l2_subdev *sd;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 dev_dbg(&client->dev, "initializing UDA1342 at address %d on %s\n",
  client->addr, adapter->name);

 sd = devm_kzalloc(&client->dev, sizeof(*sd), GFP_KERNEL);
 if (sd == ((void*)0))
  return -ENOMEM;

 v4l2_i2c_subdev_init(sd, client, &uda1342_ops);

 write_reg(client, 0x00, 0x8000);
 write_reg(client, 0x00, 0x1241);

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 return 0;
}
