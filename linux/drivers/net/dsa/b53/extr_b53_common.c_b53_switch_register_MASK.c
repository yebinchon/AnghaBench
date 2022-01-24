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
struct b53_device {int /*<<< orphan*/  ds; int /*<<< orphan*/  core_rev; int /*<<< orphan*/  name; int /*<<< orphan*/  chip_id; TYPE_1__* pdata; int /*<<< orphan*/  enabled_ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  enabled_ports; int /*<<< orphan*/  chip_id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct b53_device*) ; 
 int FUNC1 (struct b53_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct b53_device *dev)
{
	int ret;

	if (dev->pdata) {
		dev->chip_id = dev->pdata->chip_id;
		dev->enabled_ports = dev->pdata->enabled_ports;
	}

	if (!dev->chip_id && FUNC0(dev))
		return -EINVAL;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	FUNC3("found switch: %s, rev %i\n", dev->name, dev->core_rev);

	return FUNC2(dev->ds);
}