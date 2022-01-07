
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tef6862_state {struct v4l2_subdev sd; int freq; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int TEF6862_LO_FREQ ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 struct tef6862_state* kzalloc (int,int ) ;
 int tef6862_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tef6862_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct tef6862_state *state;
 struct v4l2_subdev *sd;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = kzalloc(sizeof(struct tef6862_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 state->freq = TEF6862_LO_FREQ;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &tef6862_ops);

 return 0;
}
