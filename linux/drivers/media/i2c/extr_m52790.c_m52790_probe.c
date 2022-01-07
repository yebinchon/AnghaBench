
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct m52790_state {int output; int input; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int M52790_IN_TUNER ;
 int M52790_OUT_STEREO ;
 struct m52790_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int m52790_ops ;
 int m52790_write (struct v4l2_subdev*) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int m52790_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct m52790_state *state;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &m52790_ops);
 state->input = M52790_IN_TUNER;
 state->output = M52790_OUT_STEREO;
 m52790_write(sd);
 return 0;
}
