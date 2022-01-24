#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
struct mt9v032_platform_data {scalar_t__* link_freqs; scalar_t__ link_def_freq; } ;
struct TYPE_24__ {int error; } ;
struct TYPE_17__ {int /*<<< orphan*/  function; } ;
struct TYPE_23__ {TYPE_14__ entity; int /*<<< orphan*/ * dev; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; TYPE_6__* ctrl_handler; } ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
struct TYPE_20__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; void* height; void* width; int /*<<< orphan*/  code; } ;
struct TYPE_19__ {void* height; void* width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct mt9v032 {int hratio; int vratio; int aec_agc; int hblank; TYPE_6__ ctrls; TYPE_5__ subdev; TYPE_15__ pad; int /*<<< orphan*/  sysclk; TYPE_2__ format; TYPE_3__* model; TYPE_1__ crop; int /*<<< orphan*/  link_freq; int /*<<< orphan*/  pixel_rate; int /*<<< orphan*/  test_pattern; int /*<<< orphan*/  test_pattern_color; struct mt9v032_platform_data* pdata; int /*<<< orphan*/  power_lock; void* standby_gpio; void* reset_gpio; void* clk; void* regmap; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_22__ {int min_shutter; int max_shutter; int min_hblank; int min_vblank; int max_vblank; int /*<<< orphan*/ * aec_max_shutter_v4l2_ctrl; } ;
struct TYPE_21__ {scalar_t__ color; TYPE_4__* data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_SGRBG10_1X10 ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_Y10_1X10 ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int MT9V032_AEC_ENABLE ; 
 int MT9V032_AGC_ENABLE ; 
 int MT9V032_ANALOG_GAIN_DEF ; 
 int MT9V032_ANALOG_GAIN_MAX ; 
 int MT9V032_ANALOG_GAIN_MIN ; 
 int /*<<< orphan*/  MT9V032_COLUMN_START_DEF ; 
 int MT9V032_HORIZONTAL_BLANKING_DEF ; 
 int MT9V032_HORIZONTAL_BLANKING_MAX ; 
 int /*<<< orphan*/  MT9V032_ROW_START_DEF ; 
 int /*<<< orphan*/  MT9V032_SYSCLK_FREQ_DEF ; 
 int MT9V032_TOTAL_SHUTTER_WIDTH_DEF ; 
 int MT9V032_VERTICAL_BLANKING_DEF ; 
 void* MT9V032_WINDOW_HEIGHT_DEF ; 
 void* MT9V032_WINDOW_WIDTH_DEF ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HBLANK ; 
 int /*<<< orphan*/  V4L2_CID_LINK_FREQ ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VBLANK ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct mt9v032* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_14__*) ; 
 int FUNC9 (TYPE_14__*,int,TYPE_15__*) ; 
 int /*<<< orphan*/ * mt9v032_aegc_controls ; 
 int /*<<< orphan*/  mt9v032_ctrl_ops ; 
 struct mt9v032_platform_data* FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  mt9v032_regmap_config ; 
 int /*<<< orphan*/  mt9v032_subdev_internal_ops ; 
 int /*<<< orphan*/  mt9v032_subdev_ops ; 
 int /*<<< orphan*/  mt9v032_test_pattern_color ; 
 int /*<<< orphan*/ * mt9v032_test_pattern_menu ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client,
		const struct i2c_device_id *did)
{
	struct mt9v032_platform_data *pdata = FUNC10(client);
	struct mt9v032 *mt9v032;
	unsigned int i;
	int ret;

	mt9v032 = FUNC6(&client->dev, sizeof(*mt9v032), GFP_KERNEL);
	if (!mt9v032)
		return -ENOMEM;

	mt9v032->regmap = FUNC7(client, &mt9v032_regmap_config);
	if (FUNC1(mt9v032->regmap))
		return FUNC2(mt9v032->regmap);

	mt9v032->clk = FUNC4(&client->dev, NULL);
	if (FUNC1(mt9v032->clk))
		return FUNC2(mt9v032->clk);

	mt9v032->reset_gpio = FUNC5(&client->dev, "reset",
						      GPIOD_OUT_HIGH);
	if (FUNC1(mt9v032->reset_gpio))
		return FUNC2(mt9v032->reset_gpio);

	mt9v032->standby_gpio = FUNC5(&client->dev, "standby",
							GPIOD_OUT_LOW);
	if (FUNC1(mt9v032->standby_gpio))
		return FUNC2(mt9v032->standby_gpio);

	FUNC11(&mt9v032->power_lock);
	mt9v032->pdata = pdata;
	mt9v032->model = (const void *)did->driver_data;

	FUNC15(&mt9v032->ctrls, 11 +
			       FUNC0(mt9v032_aegc_controls));

	FUNC18(&mt9v032->ctrls, &mt9v032_ctrl_ops,
			  V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
	FUNC18(&mt9v032->ctrls, &mt9v032_ctrl_ops,
			  V4L2_CID_GAIN, MT9V032_ANALOG_GAIN_MIN,
			  MT9V032_ANALOG_GAIN_MAX, 1, MT9V032_ANALOG_GAIN_DEF);
	FUNC19(&mt9v032->ctrls, &mt9v032_ctrl_ops,
			       V4L2_CID_EXPOSURE_AUTO, V4L2_EXPOSURE_MANUAL, 0,
			       V4L2_EXPOSURE_AUTO);
	FUNC18(&mt9v032->ctrls, &mt9v032_ctrl_ops,
			  V4L2_CID_EXPOSURE, mt9v032->model->data->min_shutter,
			  mt9v032->model->data->max_shutter, 1,
			  MT9V032_TOTAL_SHUTTER_WIDTH_DEF);
	FUNC18(&mt9v032->ctrls, &mt9v032_ctrl_ops,
			  V4L2_CID_HBLANK, mt9v032->model->data->min_hblank,
			  MT9V032_HORIZONTAL_BLANKING_MAX, 1,
			  MT9V032_HORIZONTAL_BLANKING_DEF);
	FUNC18(&mt9v032->ctrls, &mt9v032_ctrl_ops,
			  V4L2_CID_VBLANK, mt9v032->model->data->min_vblank,
			  mt9v032->model->data->max_vblank, 1,
			  MT9V032_VERTICAL_BLANKING_DEF);
	mt9v032->test_pattern = FUNC20(&mt9v032->ctrls,
				&mt9v032_ctrl_ops, V4L2_CID_TEST_PATTERN,
				FUNC0(mt9v032_test_pattern_menu) - 1, 0, 0,
				mt9v032_test_pattern_menu);
	mt9v032->test_pattern_color = FUNC16(&mt9v032->ctrls,
				      &mt9v032_test_pattern_color, NULL);

	FUNC16(&mt9v032->ctrls,
			     mt9v032->model->data->aec_max_shutter_v4l2_ctrl,
			     NULL);
	for (i = 0; i < FUNC0(mt9v032_aegc_controls); ++i)
		FUNC16(&mt9v032->ctrls, &mt9v032_aegc_controls[i],
				     NULL);

	FUNC13(2, &mt9v032->test_pattern);

	mt9v032->pixel_rate =
		FUNC18(&mt9v032->ctrls, &mt9v032_ctrl_ops,
				  V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);

	if (pdata && pdata->link_freqs) {
		unsigned int def = 0;

		for (i = 0; pdata->link_freqs[i]; ++i) {
			if (pdata->link_freqs[i] == pdata->link_def_freq)
				def = i;
		}

		mt9v032->link_freq =
			FUNC17(&mt9v032->ctrls,
					       &mt9v032_ctrl_ops,
					       V4L2_CID_LINK_FREQ, i - 1, def,
					       pdata->link_freqs);
		FUNC13(2, &mt9v032->link_freq);
	}


	mt9v032->subdev.ctrl_handler = &mt9v032->ctrls;

	if (mt9v032->ctrls.error) {
		FUNC3(&client->dev, "control initialization error %d\n",
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

	FUNC21(&mt9v032->subdev, client, &mt9v032_subdev_ops);
	mt9v032->subdev.internal_ops = &mt9v032_subdev_internal_ops;
	mt9v032->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	mt9v032->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	mt9v032->pad.flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC9(&mt9v032->subdev.entity, 1, &mt9v032->pad);
	if (ret < 0)
		goto err;

	mt9v032->subdev.dev = &client->dev;
	ret = FUNC12(&mt9v032->subdev);
	if (ret < 0)
		goto err;

	return 0;

err:
	FUNC8(&mt9v032->subdev.entity);
	FUNC14(&mt9v032->ctrls);
	return ret;
}