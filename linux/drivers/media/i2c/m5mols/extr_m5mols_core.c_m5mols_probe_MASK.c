#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_1__ entity; int /*<<< orphan*/ * internal_ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct m5mols_platform_data {int /*<<< orphan*/  gpio_reset; scalar_t__ reset_polarity; int /*<<< orphan*/  set_power; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct m5mols_info {void** ffmt; int /*<<< orphan*/  res_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_waitq; TYPE_2__ pad; struct v4l2_subdev sd; int /*<<< orphan*/  set_power; struct m5mols_platform_data const* pdata; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {struct m5mols_platform_data* platform_data; } ;
struct i2c_client {TYPE_4__ dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long GPIOF_OUT_INIT_HIGH ; 
 unsigned long GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  M5MOLS_RESTYPE_MONITOR ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,...) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,unsigned long,char*) ; 
 struct m5mols_info* FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void** m5mols_default_ffmt ; 
 int FUNC8 (struct v4l2_subdev*) ; 
 int FUNC9 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  m5mols_irq_handler ; 
 int /*<<< orphan*/  m5mols_ops ; 
 int FUNC10 (struct m5mols_info*,int) ; 
 int /*<<< orphan*/  m5mols_subdev_internal_ops ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  supplies ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	const struct m5mols_platform_data *pdata = client->dev.platform_data;
	unsigned long gpio_flags;
	struct m5mols_info *info;
	struct v4l2_subdev *sd;
	int ret;

	if (pdata == NULL) {
		FUNC1(&client->dev, "No platform data\n");
		return -EINVAL;
	}

	if (!FUNC6(pdata->gpio_reset)) {
		FUNC1(&client->dev, "No valid RESET GPIO specified\n");
		return -EINVAL;
	}

	if (!client->irq) {
		FUNC1(&client->dev, "Interrupt not assigned\n");
		return -EINVAL;
	}

	info = FUNC3(&client->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->pdata = pdata;
	info->set_power	= pdata->set_power;

	gpio_flags = pdata->reset_polarity
		   ? GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW;
	ret = FUNC2(&client->dev, pdata->gpio_reset, gpio_flags,
				    "M5MOLS_NRST");
	if (ret) {
		FUNC1(&client->dev, "Failed to request gpio: %d\n", ret);
		return ret;
	}

	ret = FUNC4(&client->dev, FUNC0(supplies),
				      supplies);
	if (ret) {
		FUNC1(&client->dev, "Failed to get regulators: %d\n", ret);
		return ret;
	}

	sd = &info->sd;
	FUNC15(sd, client, &m5mols_ops);
	/* Static name; NEVER use in new drivers! */
	FUNC14(sd->name, MODULE_NAME, sizeof(sd->name));
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	sd->internal_ops = &m5mols_subdev_internal_ops;
	info->pad.flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC12(&sd->entity, 1, &info->pad);
	if (ret < 0)
		return ret;
	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;

	FUNC7(&info->irq_waitq);
	FUNC13(&info->lock);

	ret = FUNC5(&client->dev, client->irq, m5mols_irq_handler,
			       IRQF_TRIGGER_RISING, MODULE_NAME, sd);
	if (ret) {
		FUNC1(&client->dev, "Interrupt request failed: %d\n", ret);
		goto error;
	}
	info->res_type = M5MOLS_RESTYPE_MONITOR;
	info->ffmt[0] = m5mols_default_ffmt[0];
	info->ffmt[1] =	m5mols_default_ffmt[1];

	ret = FUNC10(info, true);
	if (ret)
		goto error;

	ret = FUNC8(sd);
	if (!ret)
		ret = FUNC9(sd);

	ret = FUNC10(info, false);
	if (!ret)
		return 0;
error:
	FUNC11(&sd->entity);
	return ret;
}