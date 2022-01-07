
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; TYPE_5__ entity; int flags; int * internal_ops; int dev; } ;
struct TYPE_9__ {int error; } ;
struct tvp5150 {int enable; TYPE_1__ hdl; scalar_t__ irq; int rect; int input; int detected_norm; int norm; TYPE_6__* pads; int mbus_type; struct v4l2_subdev sd; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_7__ dev; int adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int sig_type; int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int CONFIG_OF ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int MEDIA_ENT_F_ATV_DECODER ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PAD_SIGNAL_ANALOG ;
 int PAD_SIGNAL_DV ;
 int PTR_ERR (struct regmap*) ;
 int TVP5150_COMPOSITE1 ;
 int TVP5150_NUM_PADS ;
 size_t TVP5150_PAD_IF_INPUT ;
 size_t TVP5150_PAD_VID_OUT ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_MBUS_BT656 ;
 int V4L2_STD_ALL ;
 int V4L2_STD_UNKNOWN ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int debug ;
 int dev_err (int ,char*,int) ;
 struct tvp5150* devm_kzalloc (TYPE_7__*,int,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (TYPE_7__*,scalar_t__,int *,int ,int,char*,struct tvp5150*) ;
 int i2c_check_functionality (int ,int) ;
 int media_entity_pads_init (TYPE_5__*,int ,TYPE_6__*) ;
 int tvp5150_config ;
 int tvp5150_ctrl_ops ;
 int tvp5150_detect_version (struct tvp5150*) ;
 int tvp5150_init (struct i2c_client*) ;
 int tvp5150_internal_ops ;
 int tvp5150_isr ;
 int tvp5150_log_status (struct v4l2_subdev*) ;
 int tvp5150_ops ;
 int tvp5150_parse_dt (struct tvp5150*,struct device_node*) ;
 int tvp5150_read_std (struct v4l2_subdev*) ;
 int tvp5150_reset (struct v4l2_subdev*,int ) ;
 int tvp5150_sd_media_ops ;
 int tvp5150_set_default (int ,int *) ;
 int tvp5150_test_patterns ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_1__*,int *,int ,scalar_t__,int ,int ,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int tvp5150_probe(struct i2c_client *c)
{
 struct tvp5150 *core;
 struct v4l2_subdev *sd;
 struct device_node *np = c->dev.of_node;
 struct regmap *map;
 int res;


 if (!i2c_check_functionality(c->adapter,
      I2C_FUNC_SMBUS_READ_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
  return -EIO;

 res = tvp5150_init(c);
 if (res)
  return res;

 core = devm_kzalloc(&c->dev, sizeof(*core), GFP_KERNEL);
 if (!core)
  return -ENOMEM;

 map = devm_regmap_init_i2c(c, &tvp5150_config);
 if (IS_ERR(map))
  return PTR_ERR(map);

 core->regmap = map;
 sd = &core->sd;

 if (IS_ENABLED(CONFIG_OF) && np) {
  res = tvp5150_parse_dt(core, np);
  if (res) {
   dev_err(sd->dev, "DT parsing error: %d\n", res);
   return res;
  }
 } else {

  core->mbus_type = V4L2_MBUS_BT656;
 }

 v4l2_i2c_subdev_init(sd, c, &tvp5150_ops);
 sd->internal_ops = &tvp5150_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 res = tvp5150_detect_version(core);
 if (res < 0)
  return res;

 core->norm = V4L2_STD_ALL;
 core->detected_norm = V4L2_STD_UNKNOWN;
 core->input = TVP5150_COMPOSITE1;
 core->enable = 1;

 v4l2_ctrl_handler_init(&core->hdl, 5);
 v4l2_ctrl_new_std(&core->hdl, &tvp5150_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&core->hdl, &tvp5150_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&core->hdl, &tvp5150_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, 128);
 v4l2_ctrl_new_std(&core->hdl, &tvp5150_ctrl_ops,
   V4L2_CID_HUE, -128, 127, 1, 0);
 v4l2_ctrl_new_std(&core->hdl, &tvp5150_ctrl_ops,
   V4L2_CID_PIXEL_RATE, 27000000,
   27000000, 1, 27000000);
 v4l2_ctrl_new_std_menu_items(&core->hdl, &tvp5150_ctrl_ops,
         V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(tvp5150_test_patterns) - 1,
         0, 0, tvp5150_test_patterns);
 sd->ctrl_handler = &core->hdl;
 if (core->hdl.error) {
  res = core->hdl.error;
  goto err;
 }

 tvp5150_set_default(tvp5150_read_std(sd), &core->rect);

 core->irq = c->irq;
 tvp5150_reset(sd, 0);
 if (c->irq) {
  res = devm_request_threaded_irq(&c->dev, c->irq, ((void*)0),
      tvp5150_isr, IRQF_TRIGGER_HIGH |
      IRQF_ONESHOT, "tvp5150", core);
  if (res)
   goto err;
 }

 res = v4l2_async_register_subdev(sd);
 if (res < 0)
  goto err;

 if (debug > 1)
  tvp5150_log_status(sd);
 return 0;

err:
 v4l2_ctrl_handler_free(&core->hdl);
 return res;
}
