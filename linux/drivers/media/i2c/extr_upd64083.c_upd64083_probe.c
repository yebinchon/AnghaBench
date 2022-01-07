
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct upd64083_state {int ext_y_adc; int * regs; scalar_t__ mode; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int TOT_REGS ;
 struct upd64083_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int memcpy (int *,int ,int) ;
 int upd64083_init ;
 int upd64083_ops ;
 int upd64083_write (struct v4l2_subdev*,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int upd64083_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct upd64083_state *state;
 struct v4l2_subdev *sd;
 int i;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &upd64083_ops);

 state->mode = 0;
 state->ext_y_adc = (1 << 5);
 memcpy(state->regs, upd64083_init, TOT_REGS);
 for (i = 0; i < TOT_REGS; i++)
  upd64083_write(sd, i, state->regs[i]);
 return 0;
}
