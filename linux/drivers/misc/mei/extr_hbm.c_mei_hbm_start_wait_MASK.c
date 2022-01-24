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
struct mei_device {scalar_t__ hbm_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  wait_hbm_start; } ;

/* Variables and functions */
 int ETIME ; 
 scalar_t__ MEI_HBM_IDLE ; 
 scalar_t__ MEI_HBM_STARTING ; 
 int /*<<< orphan*/  MEI_HBM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct mei_device *dev)
{
	int ret;

	if (dev->hbm_state > MEI_HBM_STARTING)
		return 0;

	FUNC3(&dev->device_lock);
	ret = FUNC4(dev->wait_hbm_start,
			dev->hbm_state != MEI_HBM_STARTING,
			FUNC1(MEI_HBM_TIMEOUT));
	FUNC2(&dev->device_lock);

	if (ret == 0 && (dev->hbm_state <= MEI_HBM_STARTING)) {
		dev->hbm_state = MEI_HBM_IDLE;
		FUNC0(dev->dev, "waiting for mei start failed\n");
		return -ETIME;
	}
	return 0;
}