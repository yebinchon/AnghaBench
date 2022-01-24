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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_1__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct ov5647 {int /*<<< orphan*/  lock; TYPE_2__ pad; struct v4l2_subdev sd; int /*<<< orphan*/  xclk; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct ov5647* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct v4l2_subdev*) ; 
 int FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  ov5647_subdev_internal_ops ; 
 int /*<<< orphan*/  ov5647_subdev_ops ; 
 int FUNC14 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct ov5647 *sensor;
	int ret;
	struct v4l2_subdev *sd;
	struct device_node *np = client->dev.of_node;
	u32 xclk_freq;

	sensor = FUNC7(dev, sizeof(*sensor), GFP_KERNEL);
	if (!sensor)
		return -ENOMEM;

	if (FUNC0(CONFIG_OF) && np) {
		ret = FUNC13(np);
		if (ret) {
			FUNC5(dev, "DT parsing error: %d\n", ret);
			return ret;
		}
	}

	/* get system clock (xclk) */
	sensor->xclk = FUNC6(dev, NULL);
	if (FUNC1(sensor->xclk)) {
		FUNC5(dev, "could not get xclk");
		return FUNC2(sensor->xclk);
	}

	xclk_freq = FUNC3(sensor->xclk);
	if (xclk_freq != 25000000) {
		FUNC5(dev, "Unsupported clock frequency: %u\n", xclk_freq);
		return -EINVAL;
	}

	FUNC11(&sensor->lock);

	sd = &sensor->sd;
	FUNC15(sd, client, &ov5647_subdev_ops);
	sensor->sd.internal_ops = &ov5647_subdev_internal_ops;
	sensor->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = FUNC9(&sd->entity, 1, &sensor->pad);
	if (ret < 0)
		goto mutex_remove;

	ret = FUNC12(sd);
	if (ret < 0)
		goto error;

	ret = FUNC14(sd);
	if (ret < 0)
		goto error;

	FUNC4(dev, "OmniVision OV5647 camera driver probed\n");
	return 0;
error:
	FUNC8(&sd->entity);
mutex_remove:
	FUNC10(&sensor->lock);
	return ret;
}