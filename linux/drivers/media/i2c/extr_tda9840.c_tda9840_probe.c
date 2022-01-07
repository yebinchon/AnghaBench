
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
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int LEVEL_ADJUST ;
 int STEREO_ADJUST ;
 int SWITCH ;
 int TDA9840_SET_STEREO ;
 struct v4l2_subdev* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int) ;
 int tda9840_ops ;
 int tda9840_write (struct v4l2_subdev*,int ,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tda9840_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter,
   I2C_FUNC_SMBUS_READ_BYTE_DATA |
   I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 sd = devm_kzalloc(&client->dev, sizeof(*sd), GFP_KERNEL);
 if (sd == ((void*)0))
  return -ENOMEM;
 v4l2_i2c_subdev_init(sd, client, &tda9840_ops);


 tda9840_write(sd, LEVEL_ADJUST, 0);
 tda9840_write(sd, STEREO_ADJUST, 0);
 tda9840_write(sd, SWITCH, TDA9840_SET_STEREO);
 return 0;
}
