#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tps65910_board {int /*<<< orphan*/  vmbch2_threshold; int /*<<< orphan*/  vmbch_threshold; } ;
struct tps65910 {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP1 ; 
 int /*<<< orphan*/  COMP2 ; 
 int FUNC0 (struct tps65910*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_comp1_threshold ; 
 int /*<<< orphan*/  dev_attr_comp2_threshold ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct tps65910* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tps65910_board* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct tps65910 *tps65910 = FUNC2(pdev->dev.parent);
	struct tps65910_board *pdata = FUNC3(tps65910->dev);
	int ret;

	ret = FUNC0(tps65910, COMP1,  pdata->vmbch_threshold);
	if (ret < 0) {
		FUNC1(&pdev->dev, "cannot set COMP1 threshold\n");
		return ret;
	}

	ret = FUNC0(tps65910, COMP2, pdata->vmbch2_threshold);
	if (ret < 0) {
		FUNC1(&pdev->dev, "cannot set COMP2 threshold\n");
		return ret;
	}

	/* Create sysfs entry */
	ret = FUNC4(&pdev->dev, &dev_attr_comp1_threshold);
	if (ret < 0)
		FUNC1(&pdev->dev, "failed to add COMP1 sysfs file\n");

	ret = FUNC4(&pdev->dev, &dev_attr_comp2_threshold);
	if (ret < 0)
		FUNC1(&pdev->dev, "failed to add COMP2 sysfs file\n");

	return ret;
}