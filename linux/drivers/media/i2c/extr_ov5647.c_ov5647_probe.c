
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int function; } ;
struct v4l2_subdev {TYPE_1__ entity; int flags; int * internal_ops; } ;
struct TYPE_5__ {int flags; } ;
struct ov5647 {int lock; TYPE_2__ pad; struct v4l2_subdev sd; int xclk; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int PTR_ERR (int ) ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int clk_get_rate (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 struct ov5647* devm_kzalloc (struct device*,int,int ) ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int,TYPE_2__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int ov5647_detect (struct v4l2_subdev*) ;
 int ov5647_parse_dt (struct device_node*) ;
 int ov5647_subdev_internal_ops ;
 int ov5647_subdev_ops ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int ov5647_probe(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct ov5647 *sensor;
 int ret;
 struct v4l2_subdev *sd;
 struct device_node *np = client->dev.of_node;
 u32 xclk_freq;

 sensor = devm_kzalloc(dev, sizeof(*sensor), GFP_KERNEL);
 if (!sensor)
  return -ENOMEM;

 if (IS_ENABLED(CONFIG_OF) && np) {
  ret = ov5647_parse_dt(np);
  if (ret) {
   dev_err(dev, "DT parsing error: %d\n", ret);
   return ret;
  }
 }


 sensor->xclk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(sensor->xclk)) {
  dev_err(dev, "could not get xclk");
  return PTR_ERR(sensor->xclk);
 }

 xclk_freq = clk_get_rate(sensor->xclk);
 if (xclk_freq != 25000000) {
  dev_err(dev, "Unsupported clock frequency: %u\n", xclk_freq);
  return -EINVAL;
 }

 mutex_init(&sensor->lock);

 sd = &sensor->sd;
 v4l2_i2c_subdev_init(sd, client, &ov5647_subdev_ops);
 sensor->sd.internal_ops = &ov5647_subdev_internal_ops;
 sensor->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
 sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
 ret = media_entity_pads_init(&sd->entity, 1, &sensor->pad);
 if (ret < 0)
  goto mutex_remove;

 ret = ov5647_detect(sd);
 if (ret < 0)
  goto error;

 ret = v4l2_async_register_subdev(sd);
 if (ret < 0)
  goto error;

 dev_dbg(dev, "OmniVision OV5647 camera driver probed\n");
 return 0;
error:
 media_entity_cleanup(&sd->entity);
mutex_remove:
 mutex_destroy(&sensor->lock);
 return ret;
}
