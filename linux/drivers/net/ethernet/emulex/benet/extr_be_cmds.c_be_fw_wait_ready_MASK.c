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
typedef  int u16 ;
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 int POST_STAGE_ARMFW_RDY ; 
 int FUNC1 (struct be_adapter*) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 scalar_t__ FUNC5 (struct be_adapter*) ; 
 int FUNC6 (struct be_adapter*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct be_adapter *adapter)
{
	u16 stage;
	int status, timeout = 0;
	struct device *dev = &adapter->pdev->dev;

	if (FUNC5(adapter)) {
		status = FUNC6(adapter);
		if (status) {
			stage = status;
			goto err;
		}
		return 0;
	}

	do {
		/* There's no means to poll POST state on BE2/3 VFs */
		if (FUNC0(adapter) && FUNC2(adapter))
			return 0;

		stage = FUNC1(adapter);
		if (stage == POST_STAGE_ARMFW_RDY)
			return 0;

		FUNC4(dev, "Waiting for POST, %ds elapsed\n", timeout);
		if (FUNC7(2000)) {
			FUNC3(dev, "Waiting for POST aborted\n");
			return -EINTR;
		}
		timeout += 2;
	} while (timeout < 60);

err:
	FUNC3(dev, "POST timeout; stage=%#x\n", stage);
	return -ETIMEDOUT;
}