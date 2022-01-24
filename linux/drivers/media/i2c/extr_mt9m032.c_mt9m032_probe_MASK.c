#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct mt9m032_platform_data {int pix_clock; scalar_t__ invert_pixclock; } ;
struct TYPE_22__ {int error; } ;
struct TYPE_23__ {int /*<<< orphan*/  function; } ;
struct TYPE_21__ {TYPE_9__ entity; TYPE_5__* ctrl_handler; int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; } ;
struct TYPE_20__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_19__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_18__ {int numerator; int denominator; } ;
struct mt9m032 {int /*<<< orphan*/  lock; TYPE_5__ ctrls; TYPE_4__ subdev; struct mt9m032_platform_data* pdata; TYPE_10__ pad; void* hflip; void* vflip; TYPE_3__ format; TYPE_2__ crop; TYPE_1__ frame_interval; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {struct mt9m032_platform_data* platform_data; } ;
struct i2c_client {TYPE_12__ dev; int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_Y8_1X8 ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  MT9M032_CHIP_VERSION ; 
 int MT9M032_CHIP_VERSION_VALUE ; 
 int /*<<< orphan*/  MT9M032_COLUMN_SIZE_DEF ; 
 int /*<<< orphan*/  MT9M032_COLUMN_START_DEF ; 
 int MT9M032_PIX_CLK_CTRL ; 
 int MT9M032_PIX_CLK_CTRL_INV_PIXCLK ; 
 int MT9M032_RESET ; 
 int MT9M032_RESTART ; 
 int /*<<< orphan*/  MT9M032_ROW_SIZE_DEF ; 
 int /*<<< orphan*/  MT9M032_ROW_START_DEF ; 
 int MT9M032_SHUTTER_WIDTH_DEF ; 
 int MT9M032_SHUTTER_WIDTH_MAX ; 
 int MT9M032_SHUTTER_WIDTH_MIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*,char*) ; 
 struct mt9m032* FUNC3 (TYPE_12__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int FUNC6 (TYPE_9__*,int,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  mt9m032_ctrl_ops ; 
 int /*<<< orphan*/  mt9m032_ops ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mt9m032*) ; 
 int FUNC10 (struct mt9m032*) ; 
 int FUNC11 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct mt9m032*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,void**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int) ; 
 int FUNC19 (TYPE_5__*) ; 
 void* FUNC20 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client,
			 const struct i2c_device_id *devid)
{
	struct mt9m032_platform_data *pdata = client->dev.platform_data;
	struct i2c_adapter *adapter = client->adapter;
	struct mt9m032 *sensor;
	int chip_version;
	int ret;

	if (pdata == NULL) {
		FUNC0(&client->dev, "No platform data\n");
		return -EINVAL;
	}

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC2(&client->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	if (!client->dev.platform_data)
		return -ENODEV;

	sensor = FUNC3(&client->dev, sizeof(*sensor), GFP_KERNEL);
	if (sensor == NULL)
		return -ENOMEM;

	FUNC13(&sensor->lock);

	sensor->pdata = pdata;

	FUNC21(&sensor->subdev, client, &mt9m032_ops);
	sensor->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	chip_version = FUNC8(client, MT9M032_CHIP_VERSION);
	if (chip_version != MT9M032_CHIP_VERSION_VALUE) {
		FUNC0(&client->dev, "MT9M032 not detected, wrong version "
			"0x%04x\n", chip_version);
		ret = -ENODEV;
		goto error_sensor;
	}

	FUNC1(&client->dev, "MT9M032 detected at address 0x%02x\n",
		 client->addr);

	sensor->frame_interval.numerator = 1;
	sensor->frame_interval.denominator = 30;

	sensor->crop.left = MT9M032_COLUMN_START_DEF;
	sensor->crop.top = MT9M032_ROW_START_DEF;
	sensor->crop.width = MT9M032_COLUMN_SIZE_DEF;
	sensor->crop.height = MT9M032_ROW_SIZE_DEF;

	sensor->format.width = sensor->crop.width;
	sensor->format.height = sensor->crop.height;
	sensor->format.code = MEDIA_BUS_FMT_Y8_1X8;
	sensor->format.field = V4L2_FIELD_NONE;
	sensor->format.colorspace = V4L2_COLORSPACE_SRGB;

	FUNC18(&sensor->ctrls, 5);

	FUNC20(&sensor->ctrls, &mt9m032_ctrl_ops,
			  V4L2_CID_GAIN, 0, 127, 1, 64);

	sensor->hflip = FUNC20(&sensor->ctrls,
					  &mt9m032_ctrl_ops,
					  V4L2_CID_HFLIP, 0, 1, 1, 0);
	sensor->vflip = FUNC20(&sensor->ctrls,
					  &mt9m032_ctrl_ops,
					  V4L2_CID_VFLIP, 0, 1, 1, 0);

	FUNC20(&sensor->ctrls, &mt9m032_ctrl_ops,
			  V4L2_CID_EXPOSURE, MT9M032_SHUTTER_WIDTH_MIN,
			  MT9M032_SHUTTER_WIDTH_MAX, 1,
			  MT9M032_SHUTTER_WIDTH_DEF);
	FUNC20(&sensor->ctrls, &mt9m032_ctrl_ops,
			  V4L2_CID_PIXEL_RATE, pdata->pix_clock,
			  pdata->pix_clock, 1, pdata->pix_clock);

	if (sensor->ctrls.error) {
		ret = sensor->ctrls.error;
		FUNC0(&client->dev, "control initialization error %d\n", ret);
		goto error_ctrl;
	}

	FUNC16(2, &sensor->hflip);

	sensor->subdev.ctrl_handler = &sensor->ctrls;
	sensor->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC6(&sensor->subdev.entity, 1, &sensor->pad);
	if (ret < 0)
		goto error_ctrl;

	ret = FUNC11(client, MT9M032_RESET, 1);	/* reset on */
	if (ret < 0)
		goto error_entity;
	ret = FUNC11(client, MT9M032_RESET, 0);	/* reset off */
	if (ret < 0)
		goto error_entity;

	ret = FUNC9(sensor);
	if (ret < 0)
		goto error_entity;
	FUNC15(10000, 11000);

	ret = FUNC19(&sensor->ctrls);
	if (ret < 0)
		goto error_entity;

	/* SIZE */
	ret = FUNC10(sensor);
	if (ret < 0)
		goto error_entity;

	ret = FUNC11(client, 0x41, 0x0000);	/* reserved !!! */
	if (ret < 0)
		goto error_entity;
	ret = FUNC11(client, 0x42, 0x0003);	/* reserved !!! */
	if (ret < 0)
		goto error_entity;
	ret = FUNC11(client, 0x43, 0x0003);	/* reserved !!! */
	if (ret < 0)
		goto error_entity;
	ret = FUNC11(client, 0x7f, 0x0000);	/* reserved !!! */
	if (ret < 0)
		goto error_entity;
	if (sensor->pdata->invert_pixclock) {
		ret = FUNC11(client, MT9M032_PIX_CLK_CTRL,
				    MT9M032_PIX_CLK_CTRL_INV_PIXCLK);
		if (ret < 0)
			goto error_entity;
	}

	ret = FUNC11(client, MT9M032_RESTART, 1); /* Restart on */
	if (ret < 0)
		goto error_entity;
	FUNC7(100);
	ret = FUNC11(client, MT9M032_RESTART, 0); /* Restart off */
	if (ret < 0)
		goto error_entity;
	FUNC7(100);
	ret = FUNC14(sensor, false);
	if (ret < 0)
		goto error_entity;

	return ret;

error_entity:
	FUNC5(&sensor->subdev.entity);
error_ctrl:
	FUNC17(&sensor->ctrls);
error_sensor:
	FUNC12(&sensor->lock);
	return ret;
}