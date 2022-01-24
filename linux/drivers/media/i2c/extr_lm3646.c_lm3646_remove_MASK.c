#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct lm3646_flash {TYPE_1__ subdev_led; int /*<<< orphan*/  ctrls_led; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct lm3646_flash* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct lm3646_flash *flash = FUNC0(client);

	FUNC3(&flash->subdev_led);
	FUNC2(&flash->ctrls_led);
	FUNC1(&flash->subdev_led.entity);

	return 0;
}