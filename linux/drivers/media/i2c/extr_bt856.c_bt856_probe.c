
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct bt856 {int norm; struct v4l2_subdev sd; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_STD_NTSC ;
 int bt856_dump (struct bt856*) ;
 int bt856_ops ;
 int bt856_setbit (struct bt856*,int,int,int) ;
 int bt856_write (struct bt856*,int,int) ;
 scalar_t__ debug ;
 struct bt856* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int bt856_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct bt856 *encoder;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 encoder = devm_kzalloc(&client->dev, sizeof(*encoder), GFP_KERNEL);
 if (encoder == ((void*)0))
  return -ENOMEM;
 sd = &encoder->sd;
 v4l2_i2c_subdev_init(sd, client, &bt856_ops);
 encoder->norm = V4L2_STD_NTSC;

 bt856_write(encoder, 0xdc, 0x18);
 bt856_write(encoder, 0xda, 0);
 bt856_write(encoder, 0xde, 0);

 bt856_setbit(encoder, 0xdc, 3, 1);

 bt856_setbit(encoder, 0xdc, 4, 1);

 if (encoder->norm & V4L2_STD_NTSC)
  bt856_setbit(encoder, 0xdc, 2, 0);
 else
  bt856_setbit(encoder, 0xdc, 2, 1);

 bt856_setbit(encoder, 0xdc, 1, 1);
 bt856_setbit(encoder, 0xde, 4, 0);
 bt856_setbit(encoder, 0xde, 3, 1);

 if (debug != 0)
  bt856_dump(encoder);
 return 0;
}
