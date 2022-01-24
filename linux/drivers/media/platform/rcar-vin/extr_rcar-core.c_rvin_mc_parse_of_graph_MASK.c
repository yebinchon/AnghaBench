#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_subdev {int dummy; } ;
struct rvin_dev {TYPE_2__* group; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  asd_list; } ;
struct TYPE_8__ {unsigned int count; TYPE_3__ notifier; TYPE_1__** vin; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int RCAR_VIN_NUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rvin_group_notify_ops ; 
 int /*<<< orphan*/  rvin_mc_parse_of_endpoint ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct rvin_dev*,char*) ; 

__attribute__((used)) static int FUNC9(struct rvin_dev *vin)
{
	unsigned int count = 0, vin_mask = 0;
	unsigned int i;
	int ret;

	FUNC2(&vin->group->lock);

	/* If not all VIN's are registered don't register the notifier. */
	for (i = 0; i < RCAR_VIN_NUM; i++) {
		if (vin->group->vin[i]) {
			count++;
			vin_mask |= FUNC0(i);
		}
	}

	if (vin->group->count != count) {
		FUNC3(&vin->group->lock);
		return 0;
	}

	FUNC3(&vin->group->lock);

	FUNC5(&vin->group->notifier);

	/*
	 * Have all VIN's look for CSI-2 subdevices. Some subdevices will
	 * overlap but the parser function can handle it, so each subdevice
	 * will only be registered once with the group notifier.
	 */
	for (i = 0; i < RCAR_VIN_NUM; i++) {
		if (!(vin_mask & FUNC0(i)))
			continue;

		ret = FUNC6(
				vin->group->vin[i]->dev, &vin->group->notifier,
				sizeof(struct v4l2_async_subdev), 1,
				rvin_mc_parse_of_endpoint);
		if (ret)
			return ret;
	}

	if (FUNC1(&vin->group->notifier.asd_list))
		return 0;

	vin->group->notifier.ops = &rvin_group_notify_ops;
	ret = FUNC7(&vin->v4l2_dev,
					   &vin->group->notifier);
	if (ret < 0) {
		FUNC8(vin, "Notifier registration failed\n");
		FUNC4(&vin->group->notifier);
		return ret;
	}

	return 0;
}