#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pm860x_touch_pdata {int dummy; } ;
struct pm860x_platform_data {int /*<<< orphan*/  touch; } ;
struct pm860x_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_base; } ;
struct TYPE_6__ {int pdata_size; struct TYPE_6__* resources; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* touch_devs ; 
 TYPE_1__* touch_resources ; 

__attribute__((used)) static void FUNC3(struct pm860x_chip *chip,
					struct pm860x_platform_data *pdata)
{
	int ret;

	if (pdata == NULL)
		return;

	touch_devs[0].platform_data = pdata->touch;
	touch_devs[0].pdata_size = sizeof(struct pm860x_touch_pdata);
	touch_devs[0].num_resources = FUNC0(touch_resources);
	touch_devs[0].resources = &touch_resources[0];
	ret = FUNC2(chip->dev, 0, &touch_devs[0],
			      FUNC0(touch_devs), &touch_resources[0],
			      chip->irq_base, NULL);
	if (ret < 0)
		FUNC1(chip->dev, "Failed to add touch subdev\n");
}