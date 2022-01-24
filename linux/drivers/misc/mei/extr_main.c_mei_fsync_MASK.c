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
struct mei_device {scalar_t__ dev_state; int /*<<< orphan*/  device_lock; } ;
struct mei_cl {scalar_t__ writing_state; int /*<<< orphan*/  tx_wait; struct mei_device* dev; } ;
struct file {struct mei_cl* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 scalar_t__ MEI_DEV_ENABLED ; 
 scalar_t__ MEI_WRITE_COMPLETE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl*) ; 
 scalar_t__ FUNC2 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct file *fp, loff_t start, loff_t end, int datasync)
{
	struct mei_cl *cl = fp->private_data;
	struct mei_device *dev;
	int rets;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	FUNC3(&dev->device_lock);

	if (dev->dev_state != MEI_DEV_ENABLED || !FUNC1(cl)) {
		rets = -ENODEV;
		goto out;
	}

	while (FUNC2(cl)) {
		FUNC4(&dev->device_lock);
		rets = FUNC6(cl->tx_wait,
				cl->writing_state == MEI_WRITE_COMPLETE ||
				!FUNC1(cl));
		FUNC3(&dev->device_lock);
		if (rets) {
			if (FUNC5(current))
				rets = -EINTR;
			goto out;
		}
		if (!FUNC1(cl)) {
			rets = -ENODEV;
			goto out;
		}
	}
	rets = 0;
out:
	FUNC4(&dev->device_lock);
	return rets;
}