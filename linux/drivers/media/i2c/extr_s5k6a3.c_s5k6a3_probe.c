
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int function; } ;
struct v4l2_subdev {TYPE_3__ entity; int * internal_ops; int flags; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_7__ {int height; int width; int code; } ;
struct s5k6a3 {int gpio_reset; TYPE_4__ pad; TYPE_1__ format; struct v4l2_subdev subdev; TYPE_6__* supplies; int clock_frequency; int clock; struct device* dev; int lock; } ;
struct device {int of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_11__ {int supply; } ;
struct TYPE_8__ {int code; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int PTR_ERR (int ) ;
 int S5K6A3_CLK_NAME ;
 int S5K6A3_DEFAULT_CLK_FREQ ;
 int S5K6A3_DEFAULT_HEIGHT ;
 int S5K6A3_DEFAULT_WIDTH ;
 int S5K6A3_DRV_NAME ;
 int S5K6A3_NUM_SUPPLIES ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_info (struct device*,char*,int ) ;
 int devm_clk_get (struct device*,int ) ;
 int devm_gpio_request_one (struct device*,int,int ,int ) ;
 struct s5k6a3* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_6__*) ;
 int gpio_is_valid (int) ;
 int media_entity_cleanup (TYPE_3__*) ;
 int media_entity_pads_init (TYPE_3__*,int,TYPE_4__*) ;
 int mutex_init (int *) ;
 int of_get_gpio_flags (int ,int ,int *) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_no_callbacks (struct device*) ;
 TYPE_2__* s5k6a3_formats ;
 int s5k6a3_sd_internal_ops ;
 int s5k6a3_subdev_ops ;
 int * s5k6a3_supply_names ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int s5k6a3_probe(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct s5k6a3 *sensor;
 struct v4l2_subdev *sd;
 int gpio, i, ret;

 sensor = devm_kzalloc(dev, sizeof(*sensor), GFP_KERNEL);
 if (!sensor)
  return -ENOMEM;

 mutex_init(&sensor->lock);
 sensor->gpio_reset = -EINVAL;
 sensor->clock = ERR_PTR(-EINVAL);
 sensor->dev = dev;

 sensor->clock = devm_clk_get(sensor->dev, S5K6A3_CLK_NAME);
 if (IS_ERR(sensor->clock))
  return PTR_ERR(sensor->clock);

 gpio = of_get_gpio_flags(dev->of_node, 0, ((void*)0));
 if (!gpio_is_valid(gpio))
  return gpio;

 ret = devm_gpio_request_one(dev, gpio, GPIOF_OUT_INIT_LOW,
      S5K6A3_DRV_NAME);
 if (ret < 0)
  return ret;

 sensor->gpio_reset = gpio;

 if (of_property_read_u32(dev->of_node, "clock-frequency",
     &sensor->clock_frequency)) {
  sensor->clock_frequency = S5K6A3_DEFAULT_CLK_FREQ;
  dev_info(dev, "using default %u Hz clock frequency\n",
     sensor->clock_frequency);
 }

 for (i = 0; i < S5K6A3_NUM_SUPPLIES; i++)
  sensor->supplies[i].supply = s5k6a3_supply_names[i];

 ret = devm_regulator_bulk_get(&client->dev, S5K6A3_NUM_SUPPLIES,
          sensor->supplies);
 if (ret < 0)
  return ret;

 sd = &sensor->subdev;
 v4l2_i2c_subdev_init(sd, client, &s5k6a3_subdev_ops);
 sensor->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 sd->internal_ops = &s5k6a3_sd_internal_ops;

 sensor->format.code = s5k6a3_formats[0].code;
 sensor->format.width = S5K6A3_DEFAULT_WIDTH;
 sensor->format.height = S5K6A3_DEFAULT_HEIGHT;

 sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
 sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&sd->entity, 1, &sensor->pad);
 if (ret < 0)
  return ret;

 pm_runtime_no_callbacks(dev);
 pm_runtime_enable(dev);

 ret = v4l2_async_register_subdev(sd);

 if (ret < 0) {
  pm_runtime_disable(&client->dev);
  media_entity_cleanup(&sd->entity);
 }

 return ret;
}
