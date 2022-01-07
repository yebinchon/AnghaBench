
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct v4l2_subdev {TYPE_2__* ctrl_handler; } ;
struct wm8775_state {int input; TYPE_1__* loud; TYPE_2__ hdl; void* bal; void* vol; void* mute; struct v4l2_subdev sd; } ;
struct wm8775_platform_data {int is_nova_s; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct wm8775_platform_data* platform_data; } ;
struct i2c_client {int addr; TYPE_6__ dev; TYPE_5__* adapter; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {scalar_t__ val; } ;


 int ALC_EN ;
 int ALC_HOLD ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int R11 ;
 int R12 ;
 int R13 ;
 int R14 ;
 int R15 ;
 int R16 ;
 int R17 ;
 int R18 ;
 int R19 ;
 int R20 ;
 int R21 ;
 int R23 ;
 int R7 ;
 int V4L2_CID_AUDIO_BALANCE ;
 int V4L2_CID_AUDIO_LOUDNESS ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_VOLUME ;
 struct wm8775_state* devm_kzalloc (TYPE_6__*,int,int ) ;
 int i2c_check_functionality (TYPE_5__*,int ) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 int wm8775_ctrl_ops ;
 int wm8775_ops ;
 int wm8775_set_audio (struct v4l2_subdev*,int) ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8775_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct wm8775_state *state;
 struct v4l2_subdev *sd;
 int err;
 bool is_nova_s = 0;

 if (client->dev.platform_data) {
  struct wm8775_platform_data *data = client->dev.platform_data;
  is_nova_s = data->is_nova_s;
 }


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &wm8775_ops);
 state->input = 2;

 v4l2_ctrl_handler_init(&state->hdl, 4);
 state->mute = v4l2_ctrl_new_std(&state->hdl, &wm8775_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 state->vol = v4l2_ctrl_new_std(&state->hdl, &wm8775_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, 0, 65535, (65535+99)/100, 0xCF00);
 state->bal = v4l2_ctrl_new_std(&state->hdl, &wm8775_ctrl_ops,
   V4L2_CID_AUDIO_BALANCE, 0, 65535, (65535+99)/100, 32768);
 state->loud = v4l2_ctrl_new_std(&state->hdl, &wm8775_ctrl_ops,
   V4L2_CID_AUDIO_LOUDNESS, 0, 1, 1, 1);
 sd->ctrl_handler = &state->hdl;
 err = state->hdl.error;
 if (err) {
  v4l2_ctrl_handler_free(&state->hdl);
  return err;
 }




 wm8775_write(sd, R23, 0x000);

 wm8775_write(sd, R7, 0x000);

 wm8775_write(sd, R11, 0x021);

 wm8775_write(sd, R12, 0x102);

 wm8775_write(sd, R13, 0x000);

 if (!is_nova_s) {

  wm8775_write(sd, R14, 0x1d4);

  wm8775_write(sd, R15, 0x1d4);

  wm8775_write(sd, R16, 0x1bf);


  wm8775_write(sd, R17, 0x185);
 } else {

  wm8775_write(sd, R16, 0x1bb);

  wm8775_write(sd, R17, (state->loud->val ? ALC_EN : 0) | ALC_HOLD);
 }

 wm8775_write(sd, R18, 0x0a2);

 wm8775_write(sd, R19, 0x005);
 if (!is_nova_s) {

  wm8775_write(sd, R20, 0x07a);

  wm8775_write(sd, R21, 0x102);
 } else {

  wm8775_write(sd, R20, 0x0fb);

  wm8775_set_audio(sd, 1);
 }
 return 0;
}
