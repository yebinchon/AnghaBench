#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_3__ entity; int /*<<< orphan*/ * internal_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  code; } ;
struct s5k6a3 {int gpio_reset; TYPE_4__ pad; TYPE_1__ format; struct v4l2_subdev subdev; TYPE_6__* supplies; int /*<<< orphan*/  clock_frequency; int /*<<< orphan*/  clock; struct device* dev; int /*<<< orphan*/  lock; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  supply; } ;
struct TYPE_8__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S5K6A3_CLK_NAME ; 
 int /*<<< orphan*/  S5K6A3_DEFAULT_CLK_FREQ ; 
 int /*<<< orphan*/  S5K6A3_DEFAULT_HEIGHT ; 
 int /*<<< orphan*/  S5K6A3_DEFAULT_WIDTH ; 
 int /*<<< orphan*/  S5K6A3_DRV_NAME ; 
 int S5K6A3_NUM_SUPPLIES ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s5k6a3* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 TYPE_2__* s5k6a3_formats ; 
 int /*<<< orphan*/  s5k6a3_sd_internal_ops ; 
 int /*<<< orphan*/  s5k6a3_subdev_ops ; 
 int /*<<< orphan*/ * s5k6a3_supply_names ; 
 int FUNC17 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC18 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct s5k6a3 *sensor;
	struct v4l2_subdev *sd;
	int gpio, i, ret;

	sensor = FUNC6(dev, sizeof(*sensor), GFP_KERNEL);
	if (!sensor)
		return -ENOMEM;

	FUNC11(&sensor->lock);
	sensor->gpio_reset = -EINVAL;
	sensor->clock = FUNC0(-EINVAL);
	sensor->dev = dev;

	sensor->clock = FUNC4(sensor->dev, S5K6A3_CLK_NAME);
	if (FUNC1(sensor->clock))
		return FUNC2(sensor->clock);

	gpio = FUNC12(dev->of_node, 0, NULL);
	if (!FUNC8(gpio))
		return gpio;

	ret = FUNC5(dev, gpio, GPIOF_OUT_INIT_LOW,
						S5K6A3_DRV_NAME);
	if (ret < 0)
		return ret;

	sensor->gpio_reset = gpio;

	if (FUNC13(dev->of_node, "clock-frequency",
				 &sensor->clock_frequency)) {
		sensor->clock_frequency = S5K6A3_DEFAULT_CLK_FREQ;
		FUNC3(dev, "using default %u Hz clock frequency\n",
					sensor->clock_frequency);
	}

	for (i = 0; i < S5K6A3_NUM_SUPPLIES; i++)
		sensor->supplies[i].supply = s5k6a3_supply_names[i];

	ret = FUNC7(&client->dev, S5K6A3_NUM_SUPPLIES,
				      sensor->supplies);
	if (ret < 0)
		return ret;

	sd = &sensor->subdev;
	FUNC18(sd, client, &s5k6a3_subdev_ops);
	sensor->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	sd->internal_ops = &s5k6a3_sd_internal_ops;

	sensor->format.code = s5k6a3_formats[0].code;
	sensor->format.width = S5K6A3_DEFAULT_WIDTH;
	sensor->format.height = S5K6A3_DEFAULT_HEIGHT;

	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
	sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC10(&sd->entity, 1, &sensor->pad);
	if (ret < 0)
		return ret;

	FUNC16(dev);
	FUNC15(dev);

	ret = FUNC17(sd);

	if (ret < 0) {
		FUNC14(&client->dev);
		FUNC9(&sd->entity);
	}

	return ret;
}