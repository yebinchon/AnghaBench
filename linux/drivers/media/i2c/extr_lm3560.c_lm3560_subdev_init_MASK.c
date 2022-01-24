#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm3560_flash {int /*<<< orphan*/ * ctrls_led; TYPE_1__* subdev_led; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;
typedef  enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct TYPE_3__ {TYPE_2__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_ENT_F_FLASH ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC0 (struct lm3560_flash*,int) ; 
 int /*<<< orphan*/  lm3560_ops ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct lm3560_flash *flash,
			      enum lm3560_led_id led_no, char *led_name)
{
	struct i2c_client *client = FUNC3(flash->dev);
	int rval;

	FUNC5(&flash->subdev_led[led_no], client, &lm3560_ops);
	flash->subdev_led[led_no].flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	FUNC2(flash->subdev_led[led_no].name, led_name,
		sizeof(flash->subdev_led[led_no].name));
	rval = FUNC0(flash, led_no);
	if (rval)
		goto err_out;
	rval = FUNC1(&flash->subdev_led[led_no].entity, 0, NULL);
	if (rval < 0)
		goto err_out;
	flash->subdev_led[led_no].entity.function = MEDIA_ENT_F_FLASH;

	return rval;

err_out:
	FUNC4(&flash->ctrls_led[led_no]);
	return rval;
}