#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {int flags; TYPE_1__ entity; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/ * internal_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct ov7740 {struct v4l2_subdev subdev; int /*<<< orphan*/  format; int /*<<< orphan*/ * frmsize; int /*<<< orphan*/ * fmt; int /*<<< orphan*/  mutex; TYPE_2__ pad; int /*<<< orphan*/  regmap; int /*<<< orphan*/  xvclk; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; TYPE_4__* adapter; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLIENT_SCCB ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct ov7740* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ov7740*) ; 
 int /*<<< orphan*/ * ov7740_formats ; 
 int /*<<< orphan*/ * ov7740_framesizes ; 
 int /*<<< orphan*/  FUNC11 (struct ov7740*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct ov7740*) ; 
 int FUNC14 (struct i2c_client*,struct ov7740*) ; 
 int /*<<< orphan*/  ov7740_regmap_config ; 
 int FUNC15 (struct ov7740*,int) ; 
 int /*<<< orphan*/  ov7740_subdev_internal_ops ; 
 int /*<<< orphan*/  ov7740_subdev_ops ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *client)
{
	struct ov7740 *ov7740;
	struct v4l2_subdev *sd;
	int ret;

	if (!FUNC6(client->adapter,
				     I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC2(&client->dev,
			"OV7740: I2C-Adapter doesn't support SMBUS\n");
		return -EIO;
	}

	ov7740 = FUNC4(&client->dev, sizeof(*ov7740), GFP_KERNEL);
	if (!ov7740)
		return -ENOMEM;

	ov7740->xvclk = FUNC3(&client->dev, "xvclk");
	if (FUNC0(ov7740->xvclk)) {
		ret = FUNC1(ov7740->xvclk);
		FUNC2(&client->dev,
			"OV7740: fail to get xvclk: %d\n", ret);
		return ret;
	}

	ret = FUNC14(client, ov7740);
	if (ret)
		return ret;

	ov7740->regmap = FUNC5(client, &ov7740_regmap_config);
	if (FUNC0(ov7740->regmap)) {
		ret = FUNC1(ov7740->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	sd = &ov7740->subdev;
	client->flags |= I2C_CLIENT_SCCB;
	FUNC23(sd, client, &ov7740_subdev_ops);

#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
	sd->internal_ops = &ov7740_subdev_internal_ops;
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
#endif

#if defined(CONFIG_MEDIA_CONTROLLER)
	ov7740->pad.flags = MEDIA_PAD_FL_SOURCE;
	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = media_entity_pads_init(&sd->entity, 1, &ov7740->pad);
	if (ret)
		return ret;
#endif

	ret = FUNC15(ov7740, 1);
	if (ret)
		return ret;

	FUNC19(&client->dev);
	FUNC17(&client->dev);

	ret = FUNC10(ov7740);
	if (ret)
		goto error_detect;

	FUNC9(&ov7740->mutex);

	ret = FUNC13(ov7740);
	if (ret)
		goto error_init_controls;

	FUNC24(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	ov7740->fmt = &ov7740_formats[0];
	ov7740->frmsize = &ov7740_framesizes[0];

	FUNC12(sd, &ov7740->format);

	ret = FUNC21(sd);
	if (ret)
		goto error_async_register;

	FUNC18(&client->dev);

	return 0;

error_async_register:
	FUNC22(ov7740->subdev.ctrl_handler);
error_init_controls:
	FUNC11(ov7740);
error_detect:
	FUNC16(&client->dev);
	FUNC20(&client->dev);
	FUNC15(ov7740, 0);
	FUNC7(&ov7740->subdev.entity);

	return ret;
}