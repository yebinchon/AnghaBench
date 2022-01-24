#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pm860x_platform_data {int num_backlights; int /*<<< orphan*/ * backlight; } ;
struct pm860x_chip {int /*<<< orphan*/  dev; } ;
struct pm860x_backlight_pdata {int dummy; } ;
struct TYPE_4__ {int pdata_size; int /*<<< orphan*/ * platform_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* bk_devs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pm860x_chip *chip,
				     struct pm860x_platform_data *pdata)
{
	int ret, i;

	if (pdata && pdata->backlight) {
		if (pdata->num_backlights > FUNC0(bk_devs))
			pdata->num_backlights = FUNC0(bk_devs);
		for (i = 0; i < pdata->num_backlights; i++) {
			bk_devs[i].platform_data = &pdata->backlight[i];
			bk_devs[i].pdata_size =
				sizeof(struct pm860x_backlight_pdata);
		}
	}
	ret = FUNC2(chip->dev, 0, bk_devs,
			      FUNC0(bk_devs), NULL, 0, NULL);
	if (ret < 0)
		FUNC1(chip->dev, "Failed to add backlight subdev\n");
}