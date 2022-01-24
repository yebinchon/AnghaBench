#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {int error; } ;
struct TYPE_15__ {int /*<<< orphan*/  function; } ;
struct TYPE_19__ {int flags; TYPE_11__ entity; int /*<<< orphan*/ * dev; TYPE_4__* ctrl_handler; } ;
struct TYPE_18__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_17__ {int numerator; int /*<<< orphan*/  denominator; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; } ;
struct mt9m111 {int lastpage; int /*<<< orphan*/  clk; TYPE_4__ hdl; TYPE_3__ subdev; int /*<<< orphan*/  power_lock; int /*<<< orphan*/ * fmt; TYPE_2__ rect; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_10__* current_mode; TYPE_1__ frame_interval; TYPE_12__ pad; int /*<<< orphan*/  gain; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  regulator; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  max_fps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  MT9M111_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9M111_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9M111_MIN_DARK_COLS ; 
 int /*<<< orphan*/  MT9M111_MIN_DARK_ROWS ; 
 size_t MT9M111_MODE_SXGA_15FPS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_COLORFX ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int V4L2_COLORFX_BW ; 
 int V4L2_COLORFX_NEGATIVE ; 
 int V4L2_COLORFX_NONE ; 
 int V4L2_COLORFX_SEPIA ; 
 int V4L2_COLORFX_SOLARIZATION ; 
 int V4L2_EXPOSURE_AUTO ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  context_b ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct mt9m111* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*) ; 
 int FUNC11 (TYPE_11__*,int,TYPE_12__*) ; 
 int /*<<< orphan*/ * mt9m111_colour_fmts ; 
 int /*<<< orphan*/  mt9m111_ctrl_ops ; 
 TYPE_10__* mt9m111_mode_data ; 
 int FUNC12 (struct i2c_client*,struct mt9m111*) ; 
 int /*<<< orphan*/  mt9m111_subdev_ops ; 
 int /*<<< orphan*/  mt9m111_test_pattern_menu ; 
 int FUNC13 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct i2c_client *client)
{
	struct mt9m111 *mt9m111;
	struct i2c_adapter *adapter = client->adapter;
	int ret;

	if (!FUNC9(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC6(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	mt9m111 = FUNC7(&client->dev, sizeof(struct mt9m111), GFP_KERNEL);
	if (!mt9m111)
		return -ENOMEM;

	if (FUNC5(&client->dev)) {
		ret = FUNC12(client, mt9m111);
		if (ret)
			return ret;
	}

	mt9m111->clk = FUNC16(&client->dev, "mclk");
	if (FUNC2(mt9m111->clk))
		return FUNC3(mt9m111->clk);

	mt9m111->regulator = FUNC8(&client->dev, "vdd");
	if (FUNC2(mt9m111->regulator)) {
		FUNC4(&client->dev, "regulator not found: %ld\n",
			FUNC3(mt9m111->regulator));
		return FUNC3(mt9m111->regulator);
	}

	/* Default HIGHPOWER context */
	mt9m111->ctx = &context_b;

	FUNC23(&mt9m111->subdev, client, &mt9m111_subdev_ops);
	mt9m111->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
				 V4L2_SUBDEV_FL_HAS_EVENTS;

	FUNC19(&mt9m111->hdl, 7);
	FUNC20(&mt9m111->hdl, &mt9m111_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC20(&mt9m111->hdl, &mt9m111_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC20(&mt9m111->hdl, &mt9m111_ctrl_ops,
			V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
	mt9m111->gain = FUNC20(&mt9m111->hdl, &mt9m111_ctrl_ops,
			V4L2_CID_GAIN, 0, 63 * 2 * 2, 1, 32);
	FUNC21(&mt9m111->hdl,
			&mt9m111_ctrl_ops, V4L2_CID_EXPOSURE_AUTO, 1, 0,
			V4L2_EXPOSURE_AUTO);
	FUNC22(&mt9m111->hdl,
			&mt9m111_ctrl_ops, V4L2_CID_TEST_PATTERN,
			FUNC0(mt9m111_test_pattern_menu) - 1, 0, 0,
			mt9m111_test_pattern_menu);
	FUNC21(&mt9m111->hdl, &mt9m111_ctrl_ops,
			V4L2_CID_COLORFX, V4L2_COLORFX_SOLARIZATION,
			~(FUNC1(V4L2_COLORFX_NONE) |
				FUNC1(V4L2_COLORFX_BW) |
				FUNC1(V4L2_COLORFX_SEPIA) |
				FUNC1(V4L2_COLORFX_NEGATIVE) |
				FUNC1(V4L2_COLORFX_SOLARIZATION)),
			V4L2_COLORFX_NONE);
	mt9m111->subdev.ctrl_handler = &mt9m111->hdl;
	if (mt9m111->hdl.error) {
		ret = mt9m111->hdl.error;
		goto out_clkput;
	}

#ifdef CONFIG_MEDIA_CONTROLLER
	mt9m111->pad.flags = MEDIA_PAD_FL_SOURCE;
	mt9m111->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = media_entity_pads_init(&mt9m111->subdev.entity, 1, &mt9m111->pad);
	if (ret < 0)
		goto out_hdlfree;
#endif

	mt9m111->current_mode = &mt9m111_mode_data[MT9M111_MODE_SXGA_15FPS];
	mt9m111->frame_interval.numerator = 1;
	mt9m111->frame_interval.denominator = mt9m111->current_mode->max_fps;

	/* Second stage probe - when a capture adapter is there */
	mt9m111->rect.left	= MT9M111_MIN_DARK_COLS;
	mt9m111->rect.top	= MT9M111_MIN_DARK_ROWS;
	mt9m111->rect.width	= MT9M111_MAX_WIDTH;
	mt9m111->rect.height	= MT9M111_MAX_HEIGHT;
	mt9m111->width		= mt9m111->rect.width;
	mt9m111->height		= mt9m111->rect.height;
	mt9m111->fmt		= &mt9m111_colour_fmts[0];
	mt9m111->lastpage	= -1;
	FUNC14(&mt9m111->power_lock);

	ret = FUNC13(client);
	if (ret < 0)
		goto out_entityclean;

	mt9m111->subdev.dev = &client->dev;
	ret = FUNC15(&mt9m111->subdev);
	if (ret < 0)
		goto out_entityclean;

	return 0;

out_entityclean:
#ifdef CONFIG_MEDIA_CONTROLLER
	media_entity_cleanup(&mt9m111->subdev.entity);
out_hdlfree:
#endif
	FUNC18(&mt9m111->hdl);
out_clkput:
	FUNC17(mt9m111->clk);

	return ret;
}