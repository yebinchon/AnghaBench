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
struct mei_device {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEI_DEV_DISABLED ; 
 int /*<<< orphan*/  MEI_DEV_POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mei_device *dev)
{
	FUNC0(dev->dev, "stopping the device.\n");

	FUNC7(&dev->device_lock);
	FUNC5(dev, MEI_DEV_POWER_DOWN);
	FUNC8(&dev->device_lock);
	FUNC2(dev);

	FUNC1(dev);

	FUNC3(dev);
	FUNC6(dev);

	FUNC7(&dev->device_lock);

	FUNC4(dev);
	/* move device to disabled state unconditionally */
	FUNC5(dev, MEI_DEV_DISABLED);

	FUNC8(&dev->device_lock);
}