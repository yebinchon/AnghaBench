#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int error; int /*<<< orphan*/ * lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  function; } ;
struct TYPE_12__ {int flags; TYPE_8__ entity; TYPE_3__* ctrl_handler; } ;
struct TYPE_15__ {int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct mt9m001 {int /*<<< orphan*/  mutex; TYPE_3__ hdl; TYPE_2__ subdev; TYPE_9__ pad; TYPE_1__ rect; scalar_t__ y_skip_top; int /*<<< orphan*/  autoexposure; int /*<<< orphan*/  exposure; void* reset_gpio; void* standby_gpio; void* clk; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  MT9M001_COLUMN_SKIP ; 
 int /*<<< orphan*/  MT9M001_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9M001_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9M001_ROW_SKIP ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct mt9m001* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int FUNC8 (TYPE_8__*,int,TYPE_9__*) ; 
 int /*<<< orphan*/  mt9m001_ctrl_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt9m001_subdev_ops ; 
 int FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct i2c_client *client)
{
	struct mt9m001 *mt9m001;
	struct i2c_adapter *adapter = client->adapter;
	int ret;

	if (!FUNC6(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC2(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	mt9m001 = FUNC5(&client->dev, sizeof(*mt9m001), GFP_KERNEL);
	if (!mt9m001)
		return -ENOMEM;

	mt9m001->clk = FUNC3(&client->dev, NULL);
	if (FUNC0(mt9m001->clk))
		return FUNC1(mt9m001->clk);

	mt9m001->standby_gpio = FUNC4(&client->dev, "standby",
							GPIOD_OUT_LOW);
	if (FUNC0(mt9m001->standby_gpio))
		return FUNC1(mt9m001->standby_gpio);

	mt9m001->reset_gpio = FUNC4(&client->dev, "reset",
						      GPIOD_OUT_LOW);
	if (FUNC0(mt9m001->reset_gpio))
		return FUNC1(mt9m001->reset_gpio);

	FUNC25(&mt9m001->subdev, client, &mt9m001_subdev_ops);
	mt9m001->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
				 V4L2_SUBDEV_FL_HAS_EVENTS;
	FUNC22(&mt9m001->hdl, 4);
	FUNC23(&mt9m001->hdl, &mt9m001_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC23(&mt9m001->hdl, &mt9m001_ctrl_ops,
			V4L2_CID_GAIN, 0, 127, 1, 64);
	mt9m001->exposure = FUNC23(&mt9m001->hdl, &mt9m001_ctrl_ops,
			V4L2_CID_EXPOSURE, 1, 255, 1, 255);
	/*
	 * Simulated autoexposure. If enabled, we calculate shutter width
	 * ourselves in the driver based on vertical blanking and frame width
	 */
	mt9m001->autoexposure = FUNC24(&mt9m001->hdl,
			&mt9m001_ctrl_ops, V4L2_CID_EXPOSURE_AUTO, 1, 0,
			V4L2_EXPOSURE_AUTO);
	mt9m001->subdev.ctrl_handler = &mt9m001->hdl;
	if (mt9m001->hdl.error)
		return mt9m001->hdl.error;

	FUNC20(2, &mt9m001->autoexposure,
					V4L2_EXPOSURE_MANUAL, true);

	FUNC13(&mt9m001->mutex);
	mt9m001->hdl.lock = &mt9m001->mutex;

	/* Second stage probe - when a capture adapter is there */
	mt9m001->y_skip_top	= 0;
	mt9m001->rect.left	= MT9M001_COLUMN_SKIP;
	mt9m001->rect.top	= MT9M001_ROW_SKIP;
	mt9m001->rect.width	= MT9M001_MAX_WIDTH;
	mt9m001->rect.height	= MT9M001_MAX_HEIGHT;

	ret = FUNC10(&client->dev);
	if (ret)
		goto error_hdl_free;

	FUNC17(&client->dev);
	FUNC15(&client->dev);

	ret = FUNC11(client);
	if (ret)
		goto error_power_off;

	mt9m001->pad.flags = MEDIA_PAD_FL_SOURCE;
	mt9m001->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = FUNC8(&mt9m001->subdev.entity, 1, &mt9m001->pad);
	if (ret)
		goto error_power_off;

	ret = FUNC19(&mt9m001->subdev);
	if (ret)
		goto error_entity_cleanup;

	FUNC16(&client->dev);

	return 0;

error_entity_cleanup:
	FUNC7(&mt9m001->subdev.entity);
error_power_off:
	FUNC14(&client->dev);
	FUNC18(&client->dev);
	FUNC9(&client->dev);

error_hdl_free:
	FUNC21(&mt9m001->hdl);
	FUNC12(&mt9m001->mutex);

	return ret;
}