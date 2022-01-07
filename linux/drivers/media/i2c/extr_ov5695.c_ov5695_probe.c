
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int function; } ;
struct v4l2_subdev {TYPE_1__ entity; int flags; int * internal_ops; } ;
struct TYPE_5__ {int flags; } ;
struct ov5695 {int mutex; int ctrl_handler; TYPE_2__ pad; struct v4l2_subdev subdev; int reset_gpio; int xvclk; int * cur_mode; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 scalar_t__ OV5695_XVCLK_FREQ ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int __ov5695_power_off (struct ov5695*) ;
 int __ov5695_power_on (struct ov5695*) ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_set_rate (int ,scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct ov5695* devm_kzalloc (struct device*,int,int ) ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int,TYPE_2__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int ov5695_check_sensor_id (struct ov5695*,struct i2c_client*) ;
 int ov5695_configure_regulators (struct ov5695*) ;
 int ov5695_initialize_controls (struct ov5695*) ;
 int ov5695_internal_ops ;
 int ov5695_subdev_ops ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_idle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int * supported_modes ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int ov5695_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct ov5695 *ov5695;
 struct v4l2_subdev *sd;
 int ret;

 ov5695 = devm_kzalloc(dev, sizeof(*ov5695), GFP_KERNEL);
 if (!ov5695)
  return -ENOMEM;

 ov5695->client = client;
 ov5695->cur_mode = &supported_modes[0];

 ov5695->xvclk = devm_clk_get(dev, "xvclk");
 if (IS_ERR(ov5695->xvclk)) {
  dev_err(dev, "Failed to get xvclk\n");
  return -EINVAL;
 }
 ret = clk_set_rate(ov5695->xvclk, OV5695_XVCLK_FREQ);
 if (ret < 0) {
  dev_err(dev, "Failed to set xvclk rate (24MHz)\n");
  return ret;
 }
 if (clk_get_rate(ov5695->xvclk) != OV5695_XVCLK_FREQ)
  dev_warn(dev, "xvclk mismatched, modes are based on 24MHz\n");

 ov5695->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ov5695->reset_gpio)) {
  dev_err(dev, "Failed to get reset-gpios\n");
  return -EINVAL;
 }

 ret = ov5695_configure_regulators(ov5695);
 if (ret) {
  dev_err(dev, "Failed to get power regulators\n");
  return ret;
 }

 mutex_init(&ov5695->mutex);

 sd = &ov5695->subdev;
 v4l2_i2c_subdev_init(sd, client, &ov5695_subdev_ops);
 ret = ov5695_initialize_controls(ov5695);
 if (ret)
  goto err_destroy_mutex;

 ret = __ov5695_power_on(ov5695);
 if (ret)
  goto err_free_handler;

 ret = ov5695_check_sensor_id(ov5695, client);
 if (ret)
  goto err_power_off;
 ret = v4l2_async_register_subdev(sd);
 if (ret) {
  dev_err(dev, "v4l2 async register subdev failed\n");
  goto err_clean_entity;
 }

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_idle(dev);

 return 0;

err_clean_entity:



err_power_off:
 __ov5695_power_off(ov5695);
err_free_handler:
 v4l2_ctrl_handler_free(&ov5695->ctrl_handler);
err_destroy_mutex:
 mutex_destroy(&ov5695->mutex);

 return ret;
}
