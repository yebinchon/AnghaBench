#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mei_device {scalar_t__ dev_state; int /*<<< orphan*/  write_waiting_list; int /*<<< orphan*/  write_list; int /*<<< orphan*/  ctrl_wr_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MEI_DEV_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

bool FUNC3(struct mei_device *dev)
{
	bool idle = (dev->dev_state == MEI_DEV_ENABLED &&
		FUNC1(&dev->ctrl_wr_list) &&
		FUNC1(&dev->write_list)   &&
		FUNC1(&dev->write_waiting_list));

	FUNC0(dev->dev, "write pg: is idle[%d] state=%s ctrl=%01d write=%01d wwait=%01d\n",
		idle,
		FUNC2(dev->dev_state),
		FUNC1(&dev->ctrl_wr_list),
		FUNC1(&dev->write_list),
		FUNC1(&dev->write_waiting_list));

	return idle;
}