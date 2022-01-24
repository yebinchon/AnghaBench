#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_1__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct ov5695 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ctrl_handler; TYPE_2__ pad; struct v4l2_subdev subdev; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  xvclk; int /*<<< orphan*/ * cur_mode; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 scalar_t__ OV5695_XVCLK_FREQ ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct ov5695*) ; 
 int FUNC2 (struct ov5695*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ov5695* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct ov5695*,struct i2c_client*) ; 
 int FUNC15 (struct ov5695*) ; 
 int FUNC16 (struct ov5695*) ; 
 int /*<<< orphan*/  ov5695_internal_ops ; 
 int /*<<< orphan*/  ov5695_subdev_ops ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/ * supported_modes ; 
 int FUNC20 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct ov5695 *ov5695;
	struct v4l2_subdev *sd;
	int ret;

	ov5695 = FUNC9(dev, sizeof(*ov5695), GFP_KERNEL);
	if (!ov5695)
		return -ENOMEM;

	ov5695->client = client;
	ov5695->cur_mode = &supported_modes[0];

	ov5695->xvclk = FUNC7(dev, "xvclk");
	if (FUNC0(ov5695->xvclk)) {
		FUNC5(dev, "Failed to get xvclk\n");
		return -EINVAL;
	}
	ret = FUNC4(ov5695->xvclk, OV5695_XVCLK_FREQ);
	if (ret < 0) {
		FUNC5(dev, "Failed to set xvclk rate (24MHz)\n");
		return ret;
	}
	if (FUNC3(ov5695->xvclk) != OV5695_XVCLK_FREQ)
		FUNC6(dev, "xvclk mismatched, modes are based on 24MHz\n");

	ov5695->reset_gpio = FUNC8(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ov5695->reset_gpio)) {
		FUNC5(dev, "Failed to get reset-gpios\n");
		return -EINVAL;
	}

	ret = FUNC15(ov5695);
	if (ret) {
		FUNC5(dev, "Failed to get power regulators\n");
		return ret;
	}

	FUNC13(&ov5695->mutex);

	sd = &ov5695->subdev;
	FUNC22(sd, client, &ov5695_subdev_ops);
	ret = FUNC16(ov5695);
	if (ret)
		goto err_destroy_mutex;

	ret = FUNC2(ov5695);
	if (ret)
		goto err_free_handler;

	ret = FUNC14(ov5695, client);
	if (ret)
		goto err_power_off;

#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
	sd->internal_ops = &ov5695_internal_ops;
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
#endif
#if defined(CONFIG_MEDIA_CONTROLLER)
	ov5695->pad.flags = MEDIA_PAD_FL_SOURCE;
	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = media_entity_pads_init(&sd->entity, 1, &ov5695->pad);
	if (ret < 0)
		goto err_power_off;
#endif

	ret = FUNC20(sd);
	if (ret) {
		FUNC5(dev, "v4l2 async register subdev failed\n");
		goto err_clean_entity;
	}

	FUNC19(dev);
	FUNC17(dev);
	FUNC18(dev);

	return 0;

err_clean_entity:
#if defined(CONFIG_MEDIA_CONTROLLER)
	media_entity_cleanup(&sd->entity);
#endif
err_power_off:
	FUNC1(ov5695);
err_free_handler:
	FUNC21(&ov5695->ctrl_handler);
err_destroy_mutex:
	FUNC12(&ov5695->mutex);

	return ret;
}