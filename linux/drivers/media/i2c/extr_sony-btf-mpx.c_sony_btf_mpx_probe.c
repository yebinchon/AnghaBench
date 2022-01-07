
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct sony_btf_mpx {int audmode; scalar_t__ mpxmode; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int V4L2_TUNER_MODE_STEREO ;
 struct sony_btf_mpx* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int sony_btf_mpx_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int sony_btf_mpx_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct sony_btf_mpx *t;
 struct v4l2_subdev *sd;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_I2C_BLOCK))
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 t = devm_kzalloc(&client->dev, sizeof(*t), GFP_KERNEL);
 if (t == ((void*)0))
  return -ENOMEM;

 sd = &t->sd;
 v4l2_i2c_subdev_init(sd, client, &sony_btf_mpx_ops);


 t->mpxmode = 0;
 t->audmode = V4L2_TUNER_MODE_STEREO;

 return 0;
}
