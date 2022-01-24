#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_3__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct ov2685 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ctrl_handler; TYPE_1__ subdev; TYPE_4__ pad; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  xvclk; int /*<<< orphan*/ * cur_mode; struct i2c_client* client; } ;
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
 scalar_t__ OV2685_XVCLK_FREQ ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct ov2685*) ; 
 int FUNC2 (struct ov2685*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ov2685* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct ov2685*,struct i2c_client*) ; 
 int FUNC15 (struct ov2685*) ; 
 int FUNC16 (struct ov2685*) ; 
 int /*<<< orphan*/  ov2685_internal_ops ; 
 int /*<<< orphan*/  ov2685_subdev_ops ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/ * supported_modes ; 
 int FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct ov2685 *ov2685;
	int ret;

	ov2685 = FUNC9(dev, sizeof(*ov2685), GFP_KERNEL);
	if (!ov2685)
		return -ENOMEM;

	ov2685->client = client;
	ov2685->cur_mode = &supported_modes[0];

	ov2685->xvclk = FUNC7(dev, "xvclk");
	if (FUNC0(ov2685->xvclk)) {
		FUNC5(dev, "Failed to get xvclk\n");
		return -EINVAL;
	}
	ret = FUNC4(ov2685->xvclk, OV2685_XVCLK_FREQ);
	if (ret < 0) {
		FUNC5(dev, "Failed to set xvclk rate (24MHz)\n");
		return ret;
	}
	if (FUNC3(ov2685->xvclk) != OV2685_XVCLK_FREQ)
		FUNC6(dev, "xvclk mismatched, modes are based on 24MHz\n");

	ov2685->reset_gpio = FUNC8(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ov2685->reset_gpio)) {
		FUNC5(dev, "Failed to get reset-gpios\n");
		return -EINVAL;
	}

	ret = FUNC15(ov2685);
	if (ret) {
		FUNC5(dev, "Failed to get power regulators\n");
		return ret;
	}

	FUNC13(&ov2685->mutex);
	FUNC22(&ov2685->subdev, client, &ov2685_subdev_ops);
	ret = FUNC16(ov2685);
	if (ret)
		goto err_destroy_mutex;

	ret = FUNC2(ov2685);
	if (ret)
		goto err_free_handler;

	ret = FUNC14(ov2685, client);
	if (ret)
		goto err_power_off;

#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
	ov2685->subdev.internal_ops = &ov2685_internal_ops;
	ov2685->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
#endif
#if defined(CONFIG_MEDIA_CONTROLLER)
	ov2685->pad.flags = MEDIA_PAD_FL_SOURCE;
	ov2685->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = media_entity_pads_init(&ov2685->subdev.entity, 1, &ov2685->pad);
	if (ret < 0)
		goto err_power_off;
#endif

	ret = FUNC20(&ov2685->subdev);
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
	media_entity_cleanup(&ov2685->subdev.entity);
#endif
err_power_off:
	FUNC1(ov2685);
err_free_handler:
	FUNC21(&ov2685->ctrl_handler);
err_destroy_mutex:
	FUNC12(&ov2685->mutex);

	return ret;
}