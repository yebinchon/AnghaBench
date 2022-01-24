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
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct rvin_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; TYPE_2__ vdev; TYPE_1__* info; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ use_mc; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvin_dev*,int) ; 
 int FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rvin_dev* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct rvin_dev *vin = FUNC7(file);
	bool fh_singular;
	int ret;

	FUNC1(&vin->lock);

	/* Save the singular status before we call the clean-up helper */
	fh_singular = FUNC5(file);

	/* the release helper will cleanup any on-going streaming */
	ret = FUNC0(file, NULL);

	if (vin->info->use_mc) {
		FUNC6(&vin->vdev.entity, 0);
	} else {
		if (fh_singular)
			FUNC4(vin, false);
	}

	FUNC2(&vin->lock);

	FUNC3(vin->dev);

	return ret;
}