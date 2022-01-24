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
struct mei_device {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  hbm_f_ev_supported; } ;
struct mei_cl {int notify_ev; int /*<<< orphan*/  ev_wait; struct mei_device* dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(struct mei_cl *cl, bool block, bool *notify_ev)
{
	struct mei_device *dev;
	int rets;

	*notify_ev = false;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	if (!dev->hbm_f_ev_supported) {
		FUNC1(dev, cl, "notifications not supported\n");
		return -EOPNOTSUPP;
	}

	if (!FUNC2(cl))
		return -ENODEV;

	if (cl->notify_ev)
		goto out;

	if (!block)
		return -EAGAIN;

	FUNC4(&dev->device_lock);
	rets = FUNC5(cl->ev_wait, cl->notify_ev);
	FUNC3(&dev->device_lock);

	if (rets < 0)
		return rets;

out:
	*notify_ev = cl->notify_ev;
	cl->notify_ev = false;
	return 0;
}