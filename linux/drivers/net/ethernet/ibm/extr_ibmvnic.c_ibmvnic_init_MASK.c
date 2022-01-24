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
struct ibmvnic_adapter {int from_passive_init; int init_done_rc; int /*<<< orphan*/  state; int /*<<< orphan*/  init_done; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VNIC_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*) ; 
 int FUNC2 (struct ibmvnic_adapter*) ; 
 int FUNC3 (struct ibmvnic_adapter*) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ibmvnic_adapter *adapter)
{
	struct device *dev = &adapter->vdev->dev;
	unsigned long timeout = FUNC4(30000);
	int rc;

	adapter->from_passive_init = false;

	adapter->init_done_rc = 0;
	FUNC1(adapter);
	if (!FUNC6(&adapter->init_done, timeout)) {
		FUNC0(dev, "Initialization sequence timed out\n");
		return -1;
	}

	if (adapter->init_done_rc) {
		FUNC5(adapter);
		return adapter->init_done_rc;
	}

	if (adapter->from_passive_init) {
		adapter->state = VNIC_OPEN;
		adapter->from_passive_init = false;
		return -1;
	}

	rc = FUNC3(adapter);
	if (rc) {
		FUNC0(dev, "Initialization of sub crqs failed\n");
		FUNC5(adapter);
		return rc;
	}

	rc = FUNC2(adapter);
	if (rc) {
		FUNC0(dev, "Failed to initialize sub crq irqs\n");
		FUNC5(adapter);
	}

	return rc;
}