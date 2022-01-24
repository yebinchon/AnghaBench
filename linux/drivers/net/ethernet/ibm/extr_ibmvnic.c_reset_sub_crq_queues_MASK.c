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
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; int /*<<< orphan*/ * rx_scrq; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * tx_scrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ibmvnic_adapter *adapter)
{
	int i, rc;

	for (i = 0; i < adapter->req_tx_queues; i++) {
		FUNC0(adapter->netdev, "Re-setting tx_scrq[%d]\n", i);
		rc = FUNC1(adapter, adapter->tx_scrq[i]);
		if (rc)
			return rc;
	}

	for (i = 0; i < adapter->req_rx_queues; i++) {
		FUNC0(adapter->netdev, "Re-setting rx_scrq[%d]\n", i);
		rc = FUNC1(adapter, adapter->rx_scrq[i]);
		if (rc)
			return rc;
	}

	return rc;
}