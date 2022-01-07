
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ths7303_state {struct v4l2_subdev sd; struct ths7303_platform_data* pdata; } ;
struct ths7303_platform_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {struct ths7303_platform_data* platform_data; } ;
struct i2c_client {int addr; TYPE_2__ dev; TYPE_1__* adapter; } ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int THS7303_FILTER_MODE_480I_576I ;
 int dev_err (TYPE_2__*,char*) ;
 struct ths7303_state* devm_kzalloc (TYPE_2__*,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int ths7303_ops ;
 scalar_t__ ths7303_setval (struct v4l2_subdev*,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_err (struct i2c_client*,char*) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int ths7303_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ths7303_platform_data *pdata = client->dev.platform_data;
 struct ths7303_state *state;
 struct v4l2_subdev *sd;

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "No platform data\n");
  return -EINVAL;
 }

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(struct ths7303_state),
        GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 state->pdata = pdata;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &ths7303_ops);


 if (ths7303_setval(sd, THS7303_FILTER_MODE_480I_576I) < 0) {
  v4l_err(client, "Setting to 480I_576I filter mode failed!\n");
  return -EINVAL;
 }

 return 0;
}
