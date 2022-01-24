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
struct TYPE_7__ {int /*<<< orphan*/ * v4l2_dev; } ;
struct rvin_dev {int /*<<< orphan*/  ctrl_handler; TYPE_2__* group; int /*<<< orphan*/  v4l2_dev; TYPE_1__* info; TYPE_3__ notifier; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_3__ notifier; } ;
struct TYPE_5__ {scalar_t__ use_mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rvin_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct rvin_dev *vin = FUNC2(pdev);

	FUNC3(&pdev->dev);

	FUNC6(vin);

	FUNC8(&vin->notifier);
	FUNC7(&vin->notifier);

	if (vin->info->use_mc) {
		FUNC0(&vin->group->lock);
		if (&vin->v4l2_dev == vin->group->notifier.v4l2_dev) {
			FUNC8(&vin->group->notifier);
			FUNC7(&vin->group->notifier);
		}
		FUNC1(&vin->group->lock);
		FUNC5(vin);
	}

	FUNC9(&vin->ctrl_handler);

	FUNC4(vin);

	return 0;
}