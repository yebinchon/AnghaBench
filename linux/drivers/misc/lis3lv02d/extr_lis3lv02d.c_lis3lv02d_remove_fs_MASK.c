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
struct lis3lv02d {int /*<<< orphan*/  reg_cache; scalar_t__ pm_dev; TYPE_2__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lis3lv02d_attribute_group ; 
 int /*<<< orphan*/  FUNC1 (struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct lis3lv02d *lis3)
{
	FUNC7(&lis3->pdev->dev.kobj, &lis3lv02d_attribute_group);
	FUNC2(lis3->pdev);
	if (lis3->pm_dev) {
		/* Barrier after the sysfs remove */
		FUNC3(lis3->pm_dev);

		/* SYSFS may have left chip running. Turn off if necessary */
		if (!FUNC6(lis3->pm_dev))
			FUNC1(lis3);

		FUNC4(lis3->pm_dev);
		FUNC5(lis3->pm_dev);
	}
	FUNC0(lis3->reg_cache);
	return 0;
}