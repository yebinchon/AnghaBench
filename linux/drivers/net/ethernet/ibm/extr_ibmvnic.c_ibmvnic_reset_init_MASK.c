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
typedef  scalar_t__ u64 ;
struct ibmvnic_adapter {int from_passive_init; scalar_t__ req_rx_queues; scalar_t__ req_tx_queues; int init_done_rc; scalar_t__ reset_reason; int /*<<< orphan*/  wait_for_reset; int /*<<< orphan*/  resetting; int /*<<< orphan*/  state; int /*<<< orphan*/  init_done; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VNIC_OPEN ; 
 scalar_t__ VNIC_RESET_MOBILITY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*) ; 
 int FUNC2 (struct ibmvnic_adapter*) ; 
 int FUNC3 (struct ibmvnic_adapter*) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ibmvnic_adapter*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct ibmvnic_adapter *adapter)
{
	struct device *dev = &adapter->vdev->dev;
	unsigned long timeout = FUNC4(30000);
	u64 old_num_rx_queues, old_num_tx_queues;
	int rc;

	adapter->from_passive_init = false;

	old_num_rx_queues = adapter->req_rx_queues;
	old_num_tx_queues = adapter->req_tx_queues;

	FUNC5(&adapter->init_done);
	adapter->init_done_rc = 0;
	FUNC1(adapter);
	if (!FUNC10(&adapter->init_done, timeout)) {
		FUNC0(dev, "Initialization sequence timed out\n");
		return -1;
	}

	if (adapter->init_done_rc) {
		FUNC6(adapter);
		return adapter->init_done_rc;
	}

	if (adapter->from_passive_init) {
		adapter->state = VNIC_OPEN;
		adapter->from_passive_init = false;
		return -1;
	}

	if (FUNC9(0, &adapter->resetting) && !adapter->wait_for_reset &&
	    adapter->reset_reason != VNIC_RESET_MOBILITY) {
		if (adapter->req_rx_queues != old_num_rx_queues ||
		    adapter->req_tx_queues != old_num_tx_queues) {
			FUNC7(adapter, 0);
			rc = FUNC3(adapter);
		} else {
			rc = FUNC8(adapter);
		}
	} else {
		rc = FUNC3(adapter);
	}

	if (rc) {
		FUNC0(dev, "Initialization of sub crqs failed\n");
		FUNC6(adapter);
		return rc;
	}

	rc = FUNC2(adapter);
	if (rc) {
		FUNC0(dev, "Failed to initialize sub crq irqs\n");
		FUNC6(adapter);
	}

	return rc;
}