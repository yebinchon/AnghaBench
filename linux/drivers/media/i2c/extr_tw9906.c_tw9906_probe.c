
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct tw9906 {int norm; struct v4l2_ctrl_handler hdl; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_STD_NTSC ;
 struct tw9906* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int initial_registers ;
 int tw9906_ctrl_ops ;
 int tw9906_ops ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_err (struct i2c_client*,char*) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 scalar_t__ write_regs (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int tw9906_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct tw9906 *dec;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl_handler *hdl;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 dec = devm_kzalloc(&client->dev, sizeof(*dec), GFP_KERNEL);
 if (dec == ((void*)0))
  return -ENOMEM;
 sd = &dec->sd;
 v4l2_i2c_subdev_init(sd, client, &tw9906_ops);
 hdl = &dec->hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 v4l2_ctrl_new_std(hdl, &tw9906_ctrl_ops,
  V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, &tw9906_ctrl_ops,
  V4L2_CID_CONTRAST, 0, 255, 1, 0x60);
 v4l2_ctrl_new_std(hdl, &tw9906_ctrl_ops,
  V4L2_CID_HUE, -128, 127, 1, 0);
 sd->ctrl_handler = hdl;
 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  return err;
 }


 dec->norm = V4L2_STD_NTSC;

 if (write_regs(sd, initial_registers) < 0) {
  v4l2_err(client, "error initializing TW9906\n");
  return -EINVAL;
 }

 return 0;
}
