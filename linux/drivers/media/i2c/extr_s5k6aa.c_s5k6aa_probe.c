
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int function; } ;
struct v4l2_subdev {TYPE_2__ entity; int flags; int * internal_ops; int name; } ;
struct s5k6aa_platform_data {scalar_t__ mclk_frequency; int vert_flip; int horiz_flip; int set_power; int nlanes; int bus_type; } ;
struct TYPE_9__ {scalar_t__ top; scalar_t__ left; int height; int width; } ;
struct TYPE_11__ {int flags; } ;
struct s5k6aa {scalar_t__ mclk_frequency; struct v4l2_subdev sd; TYPE_1__ ccd_rect; TYPE_6__* supplies; TYPE_3__ pad; int inv_vflip; int inv_hflip; int s_power; int mipi_lanes; int bus_type; int lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_12__ {struct s5k6aa_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct TYPE_13__ {int supply; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int S5K6AA_NUM_SUPPLIES ;
 int S5K6AA_WIN_HEIGHT_MAX ;
 int S5K6AA_WIN_WIDTH_MAX ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (TYPE_5__*,char*) ;
 struct s5k6aa* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_5__*,int,TYPE_6__*) ;
 int media_entity_cleanup (TYPE_2__*) ;
 int media_entity_pads_init (TYPE_2__*,int,TYPE_3__*) ;
 int mutex_init (int *) ;
 int s5k6aa_configure_gpios (struct s5k6aa*,struct s5k6aa_platform_data const*) ;
 int s5k6aa_initialize_ctrls (struct s5k6aa*) ;
 int s5k6aa_presets_data_init (struct s5k6aa*) ;
 int s5k6aa_subdev_internal_ops ;
 int s5k6aa_subdev_ops ;
 int * s5k6aa_supply_names ;
 int strscpy (int ,int ,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int s5k6aa_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 const struct s5k6aa_platform_data *pdata = client->dev.platform_data;
 struct v4l2_subdev *sd;
 struct s5k6aa *s5k6aa;
 int i, ret;

 if (pdata == ((void*)0)) {
  dev_err(&client->dev, "Platform data not specified\n");
  return -EINVAL;
 }

 if (pdata->mclk_frequency == 0) {
  dev_err(&client->dev, "MCLK frequency not specified\n");
  return -EINVAL;
 }

 s5k6aa = devm_kzalloc(&client->dev, sizeof(*s5k6aa), GFP_KERNEL);
 if (!s5k6aa)
  return -ENOMEM;

 mutex_init(&s5k6aa->lock);

 s5k6aa->mclk_frequency = pdata->mclk_frequency;
 s5k6aa->bus_type = pdata->bus_type;
 s5k6aa->mipi_lanes = pdata->nlanes;
 s5k6aa->s_power = pdata->set_power;
 s5k6aa->inv_hflip = pdata->horiz_flip;
 s5k6aa->inv_vflip = pdata->vert_flip;

 sd = &s5k6aa->sd;
 v4l2_i2c_subdev_init(sd, client, &s5k6aa_subdev_ops);

 strscpy(sd->name, DRIVER_NAME, sizeof(sd->name));

 sd->internal_ops = &s5k6aa_subdev_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 s5k6aa->pad.flags = MEDIA_PAD_FL_SOURCE;
 sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
 ret = media_entity_pads_init(&sd->entity, 1, &s5k6aa->pad);
 if (ret)
  return ret;

 ret = s5k6aa_configure_gpios(s5k6aa, pdata);
 if (ret)
  goto out_err;

 for (i = 0; i < S5K6AA_NUM_SUPPLIES; i++)
  s5k6aa->supplies[i].supply = s5k6aa_supply_names[i];

 ret = devm_regulator_bulk_get(&client->dev, S5K6AA_NUM_SUPPLIES,
     s5k6aa->supplies);
 if (ret) {
  dev_err(&client->dev, "Failed to get regulators\n");
  goto out_err;
 }

 ret = s5k6aa_initialize_ctrls(s5k6aa);
 if (ret)
  goto out_err;

 s5k6aa_presets_data_init(s5k6aa);

 s5k6aa->ccd_rect.width = S5K6AA_WIN_WIDTH_MAX;
 s5k6aa->ccd_rect.height = S5K6AA_WIN_HEIGHT_MAX;
 s5k6aa->ccd_rect.left = 0;
 s5k6aa->ccd_rect.top = 0;

 return 0;

out_err:
 media_entity_cleanup(&s5k6aa->sd.entity);
 return ret;
}
