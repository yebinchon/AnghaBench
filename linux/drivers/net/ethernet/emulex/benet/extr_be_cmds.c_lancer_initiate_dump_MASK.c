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
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int PHYSDEV_CONTROL_DD_MASK ; 
 int PHYSDEV_CONTROL_FW_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*,int) ; 
 int FUNC4 (struct be_adapter*) ; 

int FUNC5(struct be_adapter *adapter)
{
	struct device *dev = &adapter->pdev->dev;
	int status;

	if (FUNC2(adapter)) {
		FUNC1(dev, "Previous dump not cleared, not forcing dump\n");
		return -EEXIST;
	}

	/* give firmware reset and diagnostic dump */
	status = FUNC3(adapter, PHYSDEV_CONTROL_FW_RESET_MASK |
				     PHYSDEV_CONTROL_DD_MASK);
	if (status < 0) {
		FUNC0(dev, "FW reset failed\n");
		return status;
	}

	status = FUNC4(adapter);
	if (status)
		return status;

	if (!FUNC2(adapter)) {
		FUNC0(dev, "FW dump not generated\n");
		return -EIO;
	}

	return 0;
}