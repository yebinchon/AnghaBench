
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int debug ;
 struct v4l2_subdev* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int tea6420_ops ;
 scalar_t__ tea6420_s_routing (struct v4l2_subdev*,int,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tea6420_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct v4l2_subdev *sd;
 int err, i;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WRITE_BYTE))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 sd = devm_kzalloc(&client->dev, sizeof(*sd), GFP_KERNEL);
 if (sd == ((void*)0))
  return -ENOMEM;
 v4l2_i2c_subdev_init(sd, client, &tea6420_ops);


 err = 0;
 for (i = 1; i < 5; i++)
  err += tea6420_s_routing(sd, 6, i, 0);
 if (err) {
  v4l_dbg(1, debug, client, "could not initialize tea6420\n");
  return -ENODEV;
 }
 return 0;
}
