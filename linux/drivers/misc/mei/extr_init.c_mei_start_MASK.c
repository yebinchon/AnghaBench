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
struct mei_device {scalar_t__ dev_state; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  dev; scalar_t__ reset_count; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MEI_DEV_DISABLED ; 
 scalar_t__ MEI_DEV_INITIALIZING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 scalar_t__ FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*) ; 
 int FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct mei_device *dev)
{
	int ret;

	FUNC10(&dev->device_lock);

	/* acknowledge interrupt and stop interrupts */
	FUNC2(dev);

	FUNC6(dev);

	FUNC0(dev->dev, "reset in start the mei device.\n");

	dev->reset_count = 0;
	do {
		FUNC9(dev, MEI_DEV_INITIALIZING);
		ret = FUNC8(dev);

		if (ret == -ENODEV || dev->dev_state == MEI_DEV_DISABLED) {
			FUNC1(dev->dev, "reset failed ret = %d", ret);
			goto err;
		}
	} while (ret);

	if (FUNC3(dev)) {
		FUNC1(dev->dev, "HBM haven't started");
		goto err;
	}

	if (!FUNC5(dev)) {
		FUNC1(dev->dev, "host is not ready.\n");
		goto err;
	}

	if (!FUNC7(dev)) {
		FUNC1(dev->dev, "ME is not ready.\n");
		goto err;
	}

	if (!FUNC4(dev)) {
		FUNC0(dev->dev, "MEI start failed.\n");
		goto err;
	}

	FUNC0(dev->dev, "link layer has been established.\n");

	FUNC11(&dev->device_lock);
	return 0;
err:
	FUNC1(dev->dev, "link layer initialization failed.\n");
	FUNC9(dev, MEI_DEV_DISABLED);
	FUNC11(&dev->device_lock);
	return -ENODEV;
}