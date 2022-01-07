
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; } ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {unsigned int* platform_data; } ;
struct i2c_client {int addr; TYPE_3__ dev; TYPE_2__* adapter; } ;
struct adv7183 {unsigned int reset_pin; unsigned int oe_pin; int std; int output; int input; struct v4l2_ctrl_handler hdl; struct v4l2_subdev sd; } ;
struct TYPE_6__ {int name; } ;


 int ADV7183_8BIT_OUT ;
 int ADV7183_COMPOSITE4 ;
 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_STD_PAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int adv7183_ctrl_ops ;
 int adv7183_init_regs ;
 int adv7183_ops ;
 int adv7183_s_std (struct v4l2_subdev*,int ) ;
 int adv7183_set_fmt (struct v4l2_subdev*,int *,struct v4l2_subdev_format*) ;
 int adv7183_writeregs (struct v4l2_subdev*,int ,int ) ;
 scalar_t__ devm_gpio_request_one (TYPE_3__*,unsigned int,int ,char*) ;
 struct adv7183* devm_kzalloc (TYPE_3__*,int,int ) ;
 int gpio_set_value (unsigned int,int) ;
 int i2c_check_functionality (TYPE_2__*,int ) ;
 int mdelay (int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_err (struct i2c_client*,char*,unsigned int) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int adv7183_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct adv7183 *decoder;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl_handler *hdl;
 int ret;
 struct v4l2_subdev_format fmt = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 const unsigned *pin_array;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 pin_array = client->dev.platform_data;
 if (pin_array == ((void*)0))
  return -EINVAL;

 decoder = devm_kzalloc(&client->dev, sizeof(*decoder), GFP_KERNEL);
 if (decoder == ((void*)0))
  return -ENOMEM;

 decoder->reset_pin = pin_array[0];
 decoder->oe_pin = pin_array[1];

 if (devm_gpio_request_one(&client->dev, decoder->reset_pin,
      GPIOF_OUT_INIT_LOW, "ADV7183 Reset")) {
  v4l_err(client, "failed to request GPIO %d\n", decoder->reset_pin);
  return -EBUSY;
 }

 if (devm_gpio_request_one(&client->dev, decoder->oe_pin,
      GPIOF_OUT_INIT_HIGH,
      "ADV7183 Output Enable")) {
  v4l_err(client, "failed to request GPIO %d\n", decoder->oe_pin);
  return -EBUSY;
 }

 sd = &decoder->sd;
 v4l2_i2c_subdev_init(sd, client, &adv7183_ops);

 hdl = &decoder->hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 v4l2_ctrl_new_std(hdl, &adv7183_ctrl_ops,
   V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, &adv7183_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 0xFF, 1, 0x80);
 v4l2_ctrl_new_std(hdl, &adv7183_ctrl_ops,
   V4L2_CID_SATURATION, 0, 0xFFFF, 1, 0x8080);
 v4l2_ctrl_new_std(hdl, &adv7183_ctrl_ops,
   V4L2_CID_HUE, 0, 0xFFFF, 1, 0x8080);

 sd->ctrl_handler = hdl;
 if (hdl->error) {
  ret = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  return ret;
 }


 decoder->std = V4L2_STD_PAL;
 decoder->input = ADV7183_COMPOSITE4;
 decoder->output = ADV7183_8BIT_OUT;



 mdelay(10);
 gpio_set_value(decoder->reset_pin, 1);

 mdelay(5);

 adv7183_writeregs(sd, adv7183_init_regs, ARRAY_SIZE(adv7183_init_regs));
 adv7183_s_std(sd, decoder->std);
 fmt.format.width = 720;
 fmt.format.height = 576;
 adv7183_set_fmt(sd, ((void*)0), &fmt);


 ret = v4l2_ctrl_handler_setup(hdl);
 if (ret) {
  v4l2_ctrl_handler_free(hdl);
  return ret;
 }

 return 0;
}
