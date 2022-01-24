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
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_3__ entity; int /*<<< orphan*/  flags; } ;
struct mipid02_dev {int /*<<< orphan*/  lock; TYPE_1__ sd; int /*<<< orphan*/  notifier; TYPE_4__* pad; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  xclk; struct i2c_client* i2c_client; int /*<<< orphan*/  fmt; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {void* flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_VID_IF_BRIDGE ; 
 void* MEDIA_PAD_FL_SINK ; 
 void* MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  MIPID02_PAD_NB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct mipid02_dev* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC11 (struct mipid02_dev*) ; 
 int FUNC12 (struct mipid02_dev*) ; 
 int FUNC13 (struct mipid02_dev*) ; 
 int FUNC14 (struct mipid02_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mipid02_dev*) ; 
 int FUNC16 (struct mipid02_dev*) ; 
 int /*<<< orphan*/  mipid02_subdev_entity_ops ; 
 int /*<<< orphan*/  mipid02_subdev_ops ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct mipid02_dev *bridge;
	u32 clk_freq;
	int ret;

	bridge = FUNC7(dev, sizeof(*bridge), GFP_KERNEL);
	if (!bridge)
		return -ENOMEM;

	FUNC8(&bridge->fmt);

	bridge->i2c_client = client;
	FUNC22(&bridge->sd, client, &mipid02_subdev_ops);

	/* got and check clock */
	bridge->xclk = FUNC5(dev, "xclk");
	if (FUNC0(bridge->xclk)) {
		FUNC3(dev, "failed to get xclk\n");
		return FUNC1(bridge->xclk);
	}

	clk_freq = FUNC2(bridge->xclk);
	if (clk_freq < 6000000 || clk_freq > 27000000) {
		FUNC3(dev, "xclk freq must be in 6-27 Mhz range. got %d Hz\n",
			clk_freq);
		return -EINVAL;
	}

	bridge->reset_gpio = FUNC6(dev, "reset",
						     GPIOD_OUT_HIGH);

	ret = FUNC12(bridge);
	if (ret) {
		FUNC3(dev, "failed to get regulators %d", ret);
		return ret;
	}

	FUNC18(&bridge->lock);
	bridge->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	bridge->sd.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
	bridge->sd.entity.ops = &mipid02_subdev_entity_ops;
	bridge->pad[0].flags = MEDIA_PAD_FL_SINK;
	bridge->pad[1].flags = MEDIA_PAD_FL_SINK;
	bridge->pad[2].flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC10(&bridge->sd.entity, MIPID02_PAD_NB,
				     bridge->pad);
	if (ret) {
		FUNC3(&client->dev, "pads init failed %d", ret);
		goto mutex_cleanup;
	}

	/* enable clock, power and reset device if available */
	ret = FUNC16(bridge);
	if (ret)
		goto entity_cleanup;

	ret = FUNC11(bridge);
	if (ret) {
		FUNC3(&client->dev, "failed to detect mipid02 %d", ret);
		goto power_off;
	}

	ret = FUNC14(bridge);
	if (ret) {
		FUNC3(&client->dev, "failed to parse tx %d", ret);
		goto power_off;
	}

	ret = FUNC13(bridge);
	if (ret) {
		FUNC3(&client->dev, "failed to parse rx %d", ret);
		goto power_off;
	}

	ret = FUNC21(&bridge->sd);
	if (ret < 0) {
		FUNC3(&client->dev, "v4l2_async_register_subdev failed %d",
			    ret);
		goto unregister_notifier;
	}

	FUNC4(&client->dev, "mipid02 device probe successfully");

	return 0;

unregister_notifier:
	FUNC20(&bridge->notifier);
	FUNC19(&bridge->notifier);
power_off:
	FUNC15(bridge);
entity_cleanup:
	FUNC9(&bridge->sd.entity);
mutex_cleanup:
	FUNC17(&bridge->lock);

	return ret;
}