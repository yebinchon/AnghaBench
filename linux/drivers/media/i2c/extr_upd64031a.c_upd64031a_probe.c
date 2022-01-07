
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct upd64031a_state {int gr_mode; int direct_3dycs_connect; int * regs; scalar_t__ ext_vert_sync; scalar_t__ ext_comp_sync; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int TOT_REGS ;
 int UPD64031A_3DYCS_COMPOSITE ;
 int UPD64031A_GR_ON ;
 struct upd64031a_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int memcpy (int *,int ,int) ;
 int upd64031a_init ;
 int upd64031a_ops ;
 int upd64031a_write (struct v4l2_subdev*,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int upd64031a_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct upd64031a_state *state;
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
 v4l2_i2c_subdev_init(sd, client, &upd64031a_ops);
 memcpy(state->regs, upd64031a_init, sizeof(state->regs));
 state->gr_mode = UPD64031A_GR_ON << 6;
 state->direct_3dycs_connect = UPD64031A_3DYCS_COMPOSITE << 4;
 state->ext_comp_sync = state->ext_vert_sync = 0;
 for (i = 0; i < TOT_REGS; i++)
  upd64031a_write(sd, i, state->regs[i]);
 return 0;
}
