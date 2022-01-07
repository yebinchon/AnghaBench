
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int function; } ;
struct TYPE_6__ {TYPE_3__ entity; int flags; int * internal_ops; } ;
struct TYPE_8__ {int flags; } ;
struct ov2685 {int mutex; int ctrl_handler; TYPE_1__ subdev; TYPE_4__ pad; int reset_gpio; int xvclk; int * cur_mode; struct i2c_client* client; } ;
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
 scalar_t__ OV2685_XVCLK_FREQ ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int __ov2685_power_off (struct ov2685*) ;
 int __ov2685_power_on (struct ov2685*) ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_set_rate (int ,scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct ov2685* devm_kzalloc (struct device*,int,int ) ;
 int media_entity_cleanup (TYPE_3__*) ;
 int media_entity_pads_init (TYPE_3__*,int,TYPE_4__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int ov2685_check_sensor_id (struct ov2685*,struct i2c_client*) ;
 int ov2685_configure_regulators (struct ov2685*) ;
 int ov2685_initialize_controls (struct ov2685*) ;
 int ov2685_internal_ops ;
 int ov2685_subdev_ops ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_idle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int * supported_modes ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;

__attribute__((used)) static int ov2685_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct ov2685 *ov2685;
 int ret;

 ov2685 = devm_kzalloc(dev, sizeof(*ov2685), GFP_KERNEL);
 if (!ov2685)
  return -ENOMEM;

 ov2685->client = client;
 ov2685->cur_mode = &supported_modes[0];

 ov2685->xvclk = devm_clk_get(dev, "xvclk");
 if (IS_ERR(ov2685->xvclk)) {
  dev_err(dev, "Failed to get xvclk\n");
  return -EINVAL;
 }
 ret = clk_set_rate(ov2685->xvclk, OV2685_XVCLK_FREQ);
 if (ret < 0) {
  dev_err(dev, "Failed to set xvclk rate (24MHz)\n");
  return ret;
 }
 if (clk_get_rate(ov2685->xvclk) != OV2685_XVCLK_FREQ)
  dev_warn(dev, "xvclk mismatched, modes are based on 24MHz\n");

 ov2685->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ov2685->reset_gpio)) {
  dev_err(dev, "Failed to get reset-gpios\n");
  return -EINVAL;
 }

 ret = ov2685_configure_regulators(ov2685);
 if (ret) {
  dev_err(dev, "Failed to get power regulators\n");
  return ret;
 }

 mutex_init(&ov2685->mutex);
 v4l2_i2c_subdev_init(&ov2685->subdev, client, &ov2685_subdev_ops);
 ret = ov2685_initialize_controls(ov2685);
 if (ret)
  goto err_destroy_mutex;

 ret = __ov2685_power_on(ov2685);
 if (ret)
  goto err_free_handler;

 ret = ov2685_check_sensor_id(ov2685, client);
 if (ret)
  goto err_power_off;
 ret = v4l2_async_register_subdev(&ov2685->subdev);
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
 __ov2685_power_off(ov2685);
err_free_handler:
 v4l2_ctrl_handler_free(&ov2685->ctrl_handler);
err_destroy_mutex:
 mutex_destroy(&ov2685->mutex);

 return ret;
}
