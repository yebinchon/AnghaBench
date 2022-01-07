
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_6__* adapter; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_8__ {TYPE_2__* ctrl_handler; } ;
struct adv7393_state {int reg01; int reg02; TYPE_2__ hdl; TYPE_1__ sd; int std; int output; int reg82; int reg80; int reg35; int reg00; } ;
struct TYPE_10__ {int name; } ;


 int ADV7393_BRIGHTNESS_DEF ;
 int ADV7393_BRIGHTNESS_MAX ;
 int ADV7393_BRIGHTNESS_MIN ;
 int ADV7393_COMPOSITE_ID ;
 int ADV7393_GAIN_DEF ;
 int ADV7393_GAIN_MAX ;
 int ADV7393_GAIN_MIN ;
 int ADV7393_HD_MODE_REG6_DEFAULT ;
 int ADV7393_HUE_DEF ;
 int ADV7393_HUE_MAX ;
 int ADV7393_HUE_MIN ;
 int ADV7393_POWER_MODE_REG_DEFAULT ;
 int ADV7393_SD_MODE_REG1_DEFAULT ;
 int ADV7393_SD_MODE_REG2_DEFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HUE ;
 int V4L2_STD_NTSC ;
 int adv7393_ctrl_ops ;
 int adv7393_initialize (TYPE_1__*) ;
 int adv7393_ops ;
 struct adv7393_state* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_6__*,int ) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_2__*) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int ,int,int ) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int adv7393_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adv7393_state *state;
 int err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 state->reg00 = ADV7393_POWER_MODE_REG_DEFAULT;
 state->reg01 = 0x00;
 state->reg02 = 0x20;
 state->reg35 = ADV7393_HD_MODE_REG6_DEFAULT;
 state->reg80 = ADV7393_SD_MODE_REG1_DEFAULT;
 state->reg82 = ADV7393_SD_MODE_REG2_DEFAULT;

 state->output = ADV7393_COMPOSITE_ID;
 state->std = V4L2_STD_NTSC;

 v4l2_i2c_subdev_init(&state->sd, client, &adv7393_ops);

 v4l2_ctrl_handler_init(&state->hdl, 3);
 v4l2_ctrl_new_std(&state->hdl, &adv7393_ctrl_ops,
   V4L2_CID_BRIGHTNESS, ADV7393_BRIGHTNESS_MIN,
          ADV7393_BRIGHTNESS_MAX, 1,
          ADV7393_BRIGHTNESS_DEF);
 v4l2_ctrl_new_std(&state->hdl, &adv7393_ctrl_ops,
   V4L2_CID_HUE, ADV7393_HUE_MIN,
          ADV7393_HUE_MAX, 1,
          ADV7393_HUE_DEF);
 v4l2_ctrl_new_std(&state->hdl, &adv7393_ctrl_ops,
   V4L2_CID_GAIN, ADV7393_GAIN_MIN,
           ADV7393_GAIN_MAX, 1,
           ADV7393_GAIN_DEF);
 state->sd.ctrl_handler = &state->hdl;
 if (state->hdl.error) {
  int err = state->hdl.error;

  v4l2_ctrl_handler_free(&state->hdl);
  return err;
 }
 v4l2_ctrl_handler_setup(&state->hdl);

 err = adv7393_initialize(&state->sd);
 if (err)
  v4l2_ctrl_handler_free(&state->hdl);
 return err;
}
