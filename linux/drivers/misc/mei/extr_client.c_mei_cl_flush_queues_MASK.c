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
struct mei_device {int /*<<< orphan*/  ctrl_rd_list; int /*<<< orphan*/  ctrl_wr_list; int /*<<< orphan*/  write_waiting_list; int /*<<< orphan*/  write_list; } ;
struct mei_cl {int /*<<< orphan*/  rd_completed; int /*<<< orphan*/  rd_pending; struct mei_device* dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct file const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mei_cl*) ; 

int FUNC5(struct mei_cl *cl, const struct file *fp)
{
	struct mei_device *dev;

	if (FUNC0(!cl || !cl->dev))
		return -EINVAL;

	dev = cl->dev;

	FUNC1(dev, cl, "remove list entry belonging to cl\n");
	FUNC4(&cl->dev->write_list, cl);
	FUNC4(&cl->dev->write_waiting_list, cl);
	FUNC2(&cl->dev->ctrl_wr_list, cl);
	FUNC2(&cl->dev->ctrl_rd_list, cl);
	FUNC3(&cl->rd_pending, fp);
	FUNC3(&cl->rd_completed, fp);

	return 0;
}