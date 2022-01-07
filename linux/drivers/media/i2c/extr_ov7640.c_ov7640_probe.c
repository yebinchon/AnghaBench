
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; int flags; int dev; } ;
struct i2c_adapter {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLIENT_SCCB ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 struct v4l2_subdev* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int initial_registers ;
 int ov7640_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_err (struct i2c_client*,char*) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 scalar_t__ write_regs (struct i2c_client*,int ) ;

__attribute__((used)) static int ov7640_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct v4l2_subdev *sd;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 sd = devm_kzalloc(&client->dev, sizeof(*sd), GFP_KERNEL);
 if (sd == ((void*)0))
  return -ENOMEM;
 v4l2_i2c_subdev_init(sd, client, &ov7640_ops);

 client->flags = I2C_CLIENT_SCCB;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 if (write_regs(client, initial_registers) < 0) {
  v4l_err(client, "error initializing OV7640\n");
  return -ENODEV;
 }

 return 0;
}
