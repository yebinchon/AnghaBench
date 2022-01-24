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
struct mei_device {int recvd_hw_ready; int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  wait_hw_ready; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  MEI_HW_READY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mei_device *dev)
{
	FUNC4(&dev->device_lock);
	FUNC5(dev->wait_hw_ready,
			dev->recvd_hw_ready,
			FUNC2(MEI_HW_READY_TIMEOUT));
	FUNC3(&dev->device_lock);
	if (!dev->recvd_hw_ready) {
		FUNC0(dev->dev, "wait hw ready failed\n");
		return -ETIME;
	}

	FUNC1(dev);
	dev->recvd_hw_ready = false;
	return 0;
}