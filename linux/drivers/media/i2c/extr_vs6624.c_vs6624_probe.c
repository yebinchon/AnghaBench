
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_5__ {int numerator; int denominator; } ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct vs6624 {unsigned int ce_pin; struct v4l2_ctrl_handler hdl; int fmt; TYPE_1__ frame_rate; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {unsigned int* platform_data; } ;
struct i2c_client {int addr; TYPE_2__* adapter; TYPE_3__ dev; } ;
struct TYPE_6__ {int name; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 int I2C_FUNC_I2C ;
 int MAX_FRAME_RATE ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_VFLIP ;
 int VS6624_DIO_EN ;
 int VS6624_DISABLE_FR_DAMPER ;
 int VS6624_FR_DEN ;
 int VS6624_FR_NUM_LSB ;
 int VS6624_FR_NUM_MSB ;
 int VS6624_HSYNC_SETUP ;
 int VS6624_MICRO_EN ;
 int devm_gpio_request_one (TYPE_3__*,unsigned int const,int ,char*) ;
 struct vs6624* devm_kzalloc (TYPE_3__*,int,int ) ;
 int i2c_check_functionality (TYPE_2__*,int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_err (struct i2c_client*,char*,unsigned int const) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 int vs6624_ctrl_ops ;
 int vs6624_default ;
 int vs6624_default_fmt ;
 int vs6624_ops ;
 int vs6624_p1 ;
 int vs6624_p2 ;
 int vs6624_run_setup ;
 int vs6624_write (struct v4l2_subdev*,int ,int) ;
 int vs6624_writeregs (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int vs6624_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct vs6624 *sensor;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl_handler *hdl;
 const unsigned *ce;
 int ret;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -EIO;

 ce = client->dev.platform_data;
 if (ce == ((void*)0))
  return -EINVAL;

 ret = devm_gpio_request_one(&client->dev, *ce, GPIOF_OUT_INIT_HIGH,
        "VS6624 Chip Enable");
 if (ret) {
  v4l_err(client, "failed to request GPIO %d\n", *ce);
  return ret;
 }

 msleep(100);

 sensor = devm_kzalloc(&client->dev, sizeof(*sensor), GFP_KERNEL);
 if (sensor == ((void*)0))
  return -ENOMEM;

 sd = &sensor->sd;
 v4l2_i2c_subdev_init(sd, client, &vs6624_ops);

 vs6624_writeregs(sd, vs6624_p1);
 vs6624_write(sd, VS6624_MICRO_EN, 0x2);
 vs6624_write(sd, VS6624_DIO_EN, 0x1);
 usleep_range(10000, 11000);
 vs6624_writeregs(sd, vs6624_p2);

 vs6624_writeregs(sd, vs6624_default);
 vs6624_write(sd, VS6624_HSYNC_SETUP, 0xF);
 vs6624_writeregs(sd, vs6624_run_setup);


 sensor->frame_rate.numerator = MAX_FRAME_RATE;
 sensor->frame_rate.denominator = 1;
 vs6624_write(sd, VS6624_DISABLE_FR_DAMPER, 0x0);
 vs6624_write(sd, VS6624_FR_NUM_MSB,
   sensor->frame_rate.numerator >> 8);
 vs6624_write(sd, VS6624_FR_NUM_LSB,
   sensor->frame_rate.numerator & 0xFF);
 vs6624_write(sd, VS6624_FR_DEN,
   sensor->frame_rate.denominator & 0xFF);

 sensor->fmt = vs6624_default_fmt;
 sensor->ce_pin = *ce;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 hdl = &sensor->hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 v4l2_ctrl_new_std(hdl, &vs6624_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 0xFF, 1, 0x87);
 v4l2_ctrl_new_std(hdl, &vs6624_ctrl_ops,
   V4L2_CID_SATURATION, 0, 0xFF, 1, 0x78);
 v4l2_ctrl_new_std(hdl, &vs6624_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &vs6624_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);

 sd->ctrl_handler = hdl;
 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  return err;
 }


 ret = v4l2_ctrl_handler_setup(hdl);
 if (ret)
  v4l2_ctrl_handler_free(hdl);
 return ret;
}
