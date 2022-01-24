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
struct mei_device {scalar_t__ dev_state; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; scalar_t__ reset_count; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MEI_DEV_DISABLED ; 
 int /*<<< orphan*/  MEI_DEV_POWER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct mei_device *dev)
{
	int err;

	FUNC3(&dev->device_lock);

	FUNC2(dev, MEI_DEV_POWER_UP);
	dev->reset_count = 0;

	err = FUNC1(dev);

	FUNC4(&dev->device_lock);

	if (err == -ENODEV || dev->dev_state == MEI_DEV_DISABLED) {
		FUNC0(dev->dev, "device disabled = %d\n", err);
		return -ENODEV;
	}

	/* try to start again */
	if (err)
		FUNC5(&dev->reset_work);


	return 0;
}