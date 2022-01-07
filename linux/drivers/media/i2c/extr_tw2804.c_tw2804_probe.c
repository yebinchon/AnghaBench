
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct v4l2_ctrl {int flags; } ;
struct TYPE_4__ {int error; } ;
struct tw2804 {int channel; TYPE_1__ hdl; int norm; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; int dev; } ;
struct i2c_adapter {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CHROMA_GAIN ;
 int V4L2_CID_COLOR_KILLER ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HUE ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_STD_NTSC ;
 struct tw2804* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int tw2804_ctrl_ops ;
 int tw2804_ops ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tw2804_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct tw2804 *state;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl *ctrl;
 int err;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &tw2804_ops);
 state->channel = -1;
 state->norm = V4L2_STD_NTSC;

 v4l2_ctrl_handler_init(&state->hdl, 10);
 v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_CONTRAST, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_SATURATION, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_HUE, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_COLOR_KILLER, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_AUTOGAIN, 0, 1, 1, 0);
 ctrl = v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_GAIN, 0, 255, 1, 128);
 if (ctrl)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
 ctrl = v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_CHROMA_GAIN, 0, 255, 1, 128);
 if (ctrl)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
 ctrl = v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_BLUE_BALANCE, 0, 255, 1, 122);
 if (ctrl)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
 ctrl = v4l2_ctrl_new_std(&state->hdl, &tw2804_ctrl_ops,
    V4L2_CID_RED_BALANCE, 0, 255, 1, 122);
 if (ctrl)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
 sd->ctrl_handler = &state->hdl;
 err = state->hdl.error;
 if (err) {
  v4l2_ctrl_handler_free(&state->hdl);
  return err;
 }

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 return 0;
}
