
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct mt9v032_platform_data {scalar_t__* link_freqs; scalar_t__ link_def_freq; } ;
struct TYPE_24__ {int error; } ;
struct TYPE_17__ {int function; } ;
struct TYPE_23__ {TYPE_14__ entity; int * dev; int flags; int * internal_ops; TYPE_6__* ctrl_handler; } ;
struct TYPE_18__ {int flags; } ;
struct TYPE_20__ {int colorspace; int field; void* height; void* width; int code; } ;
struct TYPE_19__ {void* height; void* width; int top; int left; } ;
struct mt9v032 {int hratio; int vratio; int aec_agc; int hblank; TYPE_6__ ctrls; TYPE_5__ subdev; TYPE_15__ pad; int sysclk; TYPE_2__ format; TYPE_3__* model; TYPE_1__ crop; int link_freq; int pixel_rate; int test_pattern; int test_pattern_color; struct mt9v032_platform_data* pdata; int power_lock; void* standby_gpio; void* reset_gpio; void* clk; void* regmap; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int dev; } ;
struct TYPE_22__ {int min_shutter; int max_shutter; int min_hblank; int min_vblank; int max_vblank; int * aec_max_shutter_v4l2_ctrl; } ;
struct TYPE_21__ {scalar_t__ color; TYPE_4__* data; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int INT_MAX ;
 scalar_t__ IS_ERR (void*) ;
 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int MEDIA_BUS_FMT_Y10_1X10 ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int MT9V032_AEC_ENABLE ;
 int MT9V032_AGC_ENABLE ;
 int MT9V032_ANALOG_GAIN_DEF ;
 int MT9V032_ANALOG_GAIN_MAX ;
 int MT9V032_ANALOG_GAIN_MIN ;
 int MT9V032_COLUMN_START_DEF ;
 int MT9V032_HORIZONTAL_BLANKING_DEF ;
 int MT9V032_HORIZONTAL_BLANKING_MAX ;
 int MT9V032_ROW_START_DEF ;
 int MT9V032_SYSCLK_FREQ_DEF ;
 int MT9V032_TOTAL_SHUTTER_WIDTH_DEF ;
 int MT9V032_VERTICAL_BLANKING_DEF ;
 void* MT9V032_WINDOW_HEIGHT_DEF ;
 void* MT9V032_WINDOW_WIDTH_DEF ;
 int PTR_ERR (void*) ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HBLANK ;
 int V4L2_CID_LINK_FREQ ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VBLANK ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (int *,char*,int) ;
 void* devm_clk_get (int *,int *) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct mt9v032* devm_kzalloc (int *,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int media_entity_cleanup (TYPE_14__*) ;
 int media_entity_pads_init (TYPE_14__*,int,TYPE_15__*) ;
 int * mt9v032_aegc_controls ;
 int mt9v032_ctrl_ops ;
 struct mt9v032_platform_data* mt9v032_get_pdata (struct i2c_client*) ;
 int mt9v032_regmap_config ;
 int mt9v032_subdev_internal_ops ;
 int mt9v032_subdev_ops ;
 int mt9v032_test_pattern_color ;
 int * mt9v032_test_pattern_menu ;
 int mutex_init (int *) ;
 int v4l2_async_register_subdev (TYPE_5__*) ;
 int v4l2_ctrl_cluster (int,int *) ;
 int v4l2_ctrl_handler_free (TYPE_6__*) ;
 int v4l2_ctrl_handler_init (TYPE_6__*,int) ;
 int v4l2_ctrl_new_custom (TYPE_6__*,int *,int *) ;
 int v4l2_ctrl_new_int_menu (TYPE_6__*,int *,int ,unsigned int,unsigned int,scalar_t__*) ;
 int v4l2_ctrl_new_std (TYPE_6__*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (TYPE_6__*,int *,int ,int ,int ,int ) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_6__*,int *,int ,int,int ,int ,int *) ;
 int v4l2_i2c_subdev_init (TYPE_5__*,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9v032_probe(struct i2c_client *client,
  const struct i2c_device_id *did)
{
 struct mt9v032_platform_data *pdata = mt9v032_get_pdata(client);
 struct mt9v032 *mt9v032;
 unsigned int i;
 int ret;

 mt9v032 = devm_kzalloc(&client->dev, sizeof(*mt9v032), GFP_KERNEL);
 if (!mt9v032)
  return -ENOMEM;

 mt9v032->regmap = devm_regmap_init_i2c(client, &mt9v032_regmap_config);
 if (IS_ERR(mt9v032->regmap))
  return PTR_ERR(mt9v032->regmap);

 mt9v032->clk = devm_clk_get(&client->dev, ((void*)0));
 if (IS_ERR(mt9v032->clk))
  return PTR_ERR(mt9v032->clk);

 mt9v032->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
            GPIOD_OUT_HIGH);
 if (IS_ERR(mt9v032->reset_gpio))
  return PTR_ERR(mt9v032->reset_gpio);

 mt9v032->standby_gpio = devm_gpiod_get_optional(&client->dev, "standby",
       GPIOD_OUT_LOW);
 if (IS_ERR(mt9v032->standby_gpio))
  return PTR_ERR(mt9v032->standby_gpio);

 mutex_init(&mt9v032->power_lock);
 mt9v032->pdata = pdata;
 mt9v032->model = (const void *)did->driver_data;

 v4l2_ctrl_handler_init(&mt9v032->ctrls, 11 +
          ARRAY_SIZE(mt9v032_aegc_controls));

 v4l2_ctrl_new_std(&mt9v032->ctrls, &mt9v032_ctrl_ops,
     V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 v4l2_ctrl_new_std(&mt9v032->ctrls, &mt9v032_ctrl_ops,
     V4L2_CID_GAIN, MT9V032_ANALOG_GAIN_MIN,
     MT9V032_ANALOG_GAIN_MAX, 1, MT9V032_ANALOG_GAIN_DEF);
 v4l2_ctrl_new_std_menu(&mt9v032->ctrls, &mt9v032_ctrl_ops,
          V4L2_CID_EXPOSURE_AUTO, V4L2_EXPOSURE_MANUAL, 0,
          V4L2_EXPOSURE_AUTO);
 v4l2_ctrl_new_std(&mt9v032->ctrls, &mt9v032_ctrl_ops,
     V4L2_CID_EXPOSURE, mt9v032->model->data->min_shutter,
     mt9v032->model->data->max_shutter, 1,
     MT9V032_TOTAL_SHUTTER_WIDTH_DEF);
 v4l2_ctrl_new_std(&mt9v032->ctrls, &mt9v032_ctrl_ops,
     V4L2_CID_HBLANK, mt9v032->model->data->min_hblank,
     MT9V032_HORIZONTAL_BLANKING_MAX, 1,
     MT9V032_HORIZONTAL_BLANKING_DEF);
 v4l2_ctrl_new_std(&mt9v032->ctrls, &mt9v032_ctrl_ops,
     V4L2_CID_VBLANK, mt9v032->model->data->min_vblank,
     mt9v032->model->data->max_vblank, 1,
     MT9V032_VERTICAL_BLANKING_DEF);
 mt9v032->test_pattern = v4l2_ctrl_new_std_menu_items(&mt9v032->ctrls,
    &mt9v032_ctrl_ops, V4L2_CID_TEST_PATTERN,
    ARRAY_SIZE(mt9v032_test_pattern_menu) - 1, 0, 0,
    mt9v032_test_pattern_menu);
 mt9v032->test_pattern_color = v4l2_ctrl_new_custom(&mt9v032->ctrls,
          &mt9v032_test_pattern_color, ((void*)0));

 v4l2_ctrl_new_custom(&mt9v032->ctrls,
        mt9v032->model->data->aec_max_shutter_v4l2_ctrl,
        ((void*)0));
 for (i = 0; i < ARRAY_SIZE(mt9v032_aegc_controls); ++i)
  v4l2_ctrl_new_custom(&mt9v032->ctrls, &mt9v032_aegc_controls[i],
         ((void*)0));

 v4l2_ctrl_cluster(2, &mt9v032->test_pattern);

 mt9v032->pixel_rate =
  v4l2_ctrl_new_std(&mt9v032->ctrls, &mt9v032_ctrl_ops,
      V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);

 if (pdata && pdata->link_freqs) {
  unsigned int def = 0;

  for (i = 0; pdata->link_freqs[i]; ++i) {
   if (pdata->link_freqs[i] == pdata->link_def_freq)
    def = i;
  }

  mt9v032->link_freq =
   v4l2_ctrl_new_int_menu(&mt9v032->ctrls,
            &mt9v032_ctrl_ops,
            V4L2_CID_LINK_FREQ, i - 1, def,
            pdata->link_freqs);
  v4l2_ctrl_cluster(2, &mt9v032->link_freq);
 }


 mt9v032->subdev.ctrl_handler = &mt9v032->ctrls;

 if (mt9v032->ctrls.error) {
  dev_err(&client->dev, "control initialization error %d\n",
   mt9v032->ctrls.error);
  ret = mt9v032->ctrls.error;
  goto err;
 }

 mt9v032->crop.left = MT9V032_COLUMN_START_DEF;
 mt9v032->crop.top = MT9V032_ROW_START_DEF;
 mt9v032->crop.width = MT9V032_WINDOW_WIDTH_DEF;
 mt9v032->crop.height = MT9V032_WINDOW_HEIGHT_DEF;

 if (mt9v032->model->color)
  mt9v032->format.code = MEDIA_BUS_FMT_SGRBG10_1X10;
 else
  mt9v032->format.code = MEDIA_BUS_FMT_Y10_1X10;

 mt9v032->format.width = MT9V032_WINDOW_WIDTH_DEF;
 mt9v032->format.height = MT9V032_WINDOW_HEIGHT_DEF;
 mt9v032->format.field = V4L2_FIELD_NONE;
 mt9v032->format.colorspace = V4L2_COLORSPACE_SRGB;

 mt9v032->hratio = 1;
 mt9v032->vratio = 1;

 mt9v032->aec_agc = MT9V032_AEC_ENABLE | MT9V032_AGC_ENABLE;
 mt9v032->hblank = MT9V032_HORIZONTAL_BLANKING_DEF;
 mt9v032->sysclk = MT9V032_SYSCLK_FREQ_DEF;

 v4l2_i2c_subdev_init(&mt9v032->subdev, client, &mt9v032_subdev_ops);
 mt9v032->subdev.internal_ops = &mt9v032_subdev_internal_ops;
 mt9v032->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 mt9v032->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
 mt9v032->pad.flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&mt9v032->subdev.entity, 1, &mt9v032->pad);
 if (ret < 0)
  goto err;

 mt9v032->subdev.dev = &client->dev;
 ret = v4l2_async_register_subdev(&mt9v032->subdev);
 if (ret < 0)
  goto err;

 return 0;

err:
 media_entity_cleanup(&mt9v032->subdev.entity);
 v4l2_ctrl_handler_free(&mt9v032->ctrls);
 return ret;
}
