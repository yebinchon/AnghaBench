#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rvin_parallel_entity {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ops; } ;
struct rvin_dev {TYPE_5__ notifier; int /*<<< orphan*/  v4l2_dev; TYPE_4__* parallel; TYPE_1__* info; int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  fwnode; } ;
struct TYPE_11__ {TYPE_2__ match; } ;
struct TYPE_12__ {TYPE_3__ asd; } ;
struct TYPE_9__ {scalar_t__ use_mc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  rvin_parallel_notify_ops ; 
 int /*<<< orphan*/  rvin_parallel_parse_v4l2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvin_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rvin_dev*,char*) ; 

__attribute__((used)) static int FUNC7(struct rvin_dev *vin)
{
	int ret;

	FUNC2(&vin->notifier);

	ret = FUNC3(
		vin->dev, &vin->notifier, sizeof(struct rvin_parallel_entity),
		0, rvin_parallel_parse_v4l2);
	if (ret)
		return ret;

	/* If using mc, it's fine not to have any input registered. */
	if (!vin->parallel)
		return vin->info->use_mc ? 0 : -ENODEV;

	FUNC5(vin, "Found parallel subdevice %pOF\n",
		FUNC0(vin->parallel->asd.match.fwnode));

	vin->notifier.ops = &rvin_parallel_notify_ops;
	ret = FUNC4(&vin->v4l2_dev, &vin->notifier);
	if (ret < 0) {
		FUNC6(vin, "Notifier registration failed\n");
		FUNC1(&vin->notifier);
		return ret;
	}

	return 0;
}