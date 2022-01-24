#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {scalar_t__ platform_data; int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {TYPE_2__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct adp1653_flash {int /*<<< orphan*/  ctrls; TYPE_1__ subdev; int /*<<< orphan*/  power_lock; scalar_t__ platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_FLASH ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC0 (struct adp1653_flash*) ; 
 int /*<<< orphan*/  adp1653_internal_ops ; 
 int FUNC1 (struct i2c_client*,struct adp1653_flash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adp1653_ops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct adp1653_flash* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *devid)
{
	struct adp1653_flash *flash;
	int ret;

	flash = FUNC3(&client->dev, sizeof(*flash), GFP_KERNEL);
	if (flash == NULL)
		return -ENOMEM;

	if (client->dev.of_node) {
		ret = FUNC1(client, flash, client->dev.of_node);
		if (ret)
			return ret;
	} else {
		if (!client->dev.platform_data) {
			FUNC2(&client->dev,
				"Neither DT not platform data provided\n");
			return -EINVAL;
		}
		flash->platform_data = client->dev.platform_data;
	}

	FUNC5(&flash->power_lock);

	FUNC7(&flash->subdev, client, &adp1653_ops);
	flash->subdev.internal_ops = &adp1653_internal_ops;
	flash->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	ret = FUNC0(flash);
	if (ret)
		goto free_and_quit;

	ret = FUNC4(&flash->subdev.entity, 0, NULL);
	if (ret < 0)
		goto free_and_quit;

	flash->subdev.entity.function = MEDIA_ENT_F_FLASH;

	return 0;

free_and_quit:
	FUNC2(&client->dev, "adp1653: failed to register device\n");
	FUNC6(&flash->ctrls);
	return ret;
}