#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {int flags; TYPE_1__ entity; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/ * internal_ops; int /*<<< orphan*/  name; } ;
struct regmap_config {int reg_bits; int val_bits; int max_register; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct ov965x {scalar_t__ mclk_frequency; int /*<<< orphan*/  lock; int /*<<< orphan*/ * fiv; int /*<<< orphan*/ * frame_size; int /*<<< orphan*/  format; TYPE_2__ pad; struct v4l2_subdev sd; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct ov9650_platform_data {scalar_t__ mclk_frequency; } ;
struct TYPE_10__ {struct ov9650_platform_data* platform_data; } ;
struct i2c_client {TYPE_4__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 struct ov965x* FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ov965x*) ; 
 int FUNC13 (struct ov965x*,struct ov9650_platform_data const*) ; 
 int FUNC14 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/ * ov965x_framesizes ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct ov965x*) ; 
 int /*<<< orphan*/ * ov965x_intervals ; 
 int /*<<< orphan*/  ov965x_sd_internal_ops ; 
 int /*<<< orphan*/  ov965x_subdev_ops ; 
 int /*<<< orphan*/  FUNC17 (struct ov965x*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client)
{
	const struct ov9650_platform_data *pdata = client->dev.platform_data;
	struct v4l2_subdev *sd;
	struct ov965x *ov965x;
	int ret;
	static const struct regmap_config ov965x_regmap_config = {
		.reg_bits = 8,
		.val_bits = 8,
		.max_register = 0xab,
	};

	ov965x = FUNC6(&client->dev, sizeof(*ov965x), GFP_KERNEL);
	if (!ov965x)
		return -ENOMEM;

	ov965x->regmap = FUNC7(client, &ov965x_regmap_config);
	if (FUNC0(ov965x->regmap)) {
		FUNC3(&client->dev, "Failed to allocate register map\n");
		return FUNC1(ov965x->regmap);
	}

	if (pdata) {
		if (pdata->mclk_frequency == 0) {
			FUNC3(&client->dev, "MCLK frequency not specified\n");
			return -EINVAL;
		}
		ov965x->mclk_frequency = pdata->mclk_frequency;

		ret = FUNC13(ov965x, pdata);
		if (ret < 0)
			return ret;
	} else if (FUNC4(&client->dev)) {
		ov965x->clk = FUNC5(&client->dev, NULL);
		if (FUNC0(ov965x->clk))
			return FUNC1(ov965x->clk);
		ov965x->mclk_frequency = FUNC2(ov965x->clk);

		ret = FUNC12(ov965x);
		if (ret < 0)
			return ret;
	} else {
		FUNC3(&client->dev,
			"Neither platform data nor device property specified\n");

		return -EINVAL;
	}

	FUNC11(&ov965x->lock);

	sd = &ov965x->sd;
	FUNC21(sd, client, &ov965x_subdev_ops);
	FUNC18(sd->name, DRIVER_NAME, sizeof(sd->name));

	sd->internal_ops = &ov965x_sd_internal_ops;
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
		     V4L2_SUBDEV_FL_HAS_EVENTS;

	ov965x->pad.flags = MEDIA_PAD_FL_SOURCE;
	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = FUNC9(&sd->entity, 1, &ov965x->pad);
	if (ret < 0)
		goto err_mutex;

	ret = FUNC16(ov965x);
	if (ret < 0)
		goto err_me;

	FUNC15(&ov965x->format);
	ov965x->frame_size = &ov965x_framesizes[0];
	ov965x->fiv = &ov965x_intervals[0];

	ret = FUNC14(sd);
	if (ret < 0)
		goto err_ctrls;

	/* Update exposure time min/max to match frame format */
	FUNC17(ov965x);

	ret = FUNC19(sd);
	if (ret < 0)
		goto err_ctrls;

	return 0;
err_ctrls:
	FUNC20(sd->ctrl_handler);
err_me:
	FUNC8(&sd->entity);
err_mutex:
	FUNC10(&ov965x->lock);
	return ret;
}