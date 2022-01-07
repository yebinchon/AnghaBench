
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ths8200_state {struct v4l2_subdev sd; int chip_version; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int name; int dev; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int THS8200_VERSION ;
 int debug ;
 struct ths8200_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int ths8200_core_init (struct v4l2_subdev*) ;
 int ths8200_ops ;
 int ths8200_read (struct v4l2_subdev*,int ) ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,int,int ) ;

__attribute__((used)) static int ths8200_probe(struct i2c_client *client)
{
 struct ths8200_state *state;
 struct v4l2_subdev *sd;
 int error;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &ths8200_ops);

 state->chip_version = ths8200_read(sd, THS8200_VERSION);
 v4l2_dbg(1, debug, sd, "chip version 0x%x\n", state->chip_version);

 ths8200_core_init(sd);

 error = v4l2_async_register_subdev(&state->sd);
 if (error)
  return error;

 v4l2_info(sd, "%s found @ 0x%x (%s)\n", client->name,
    client->addr << 1, client->adapter->name);

 return 0;
}
