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
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int state; int req_rx_queues; int req_tx_queues; int /*<<< orphan*/ * napi; TYPE_1__** tx_scrq; TYPE_1__** rx_scrq; } ;
typedef  enum vnic_state { ____Placeholder_vnic_state } vnic_state ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVNIC_LOGICAL_LNK_UP ; 
 int VNIC_CLOSED ; 
 int VNIC_OPEN ; 
 int VNIC_OPENING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 struct ibmvnic_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvnic_adapter*) ; 
 int FUNC10 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC6(netdev);
	enum vnic_state prev_state = adapter->state;
	int i, rc;

	adapter->state = VNIC_OPENING;
	FUNC9(adapter);
	FUNC2(adapter);

	/* We're ready to receive frames, enable the sub-crq interrupts and
	 * set the logical link state to up
	 */
	for (i = 0; i < adapter->req_rx_queues; i++) {
		FUNC5(netdev, "Enabling rx_scrq[%d] irq\n", i);
		if (prev_state == VNIC_CLOSED)
			FUNC0(adapter->rx_scrq[i]->irq);
		FUNC1(adapter, adapter->rx_scrq[i]);
	}

	for (i = 0; i < adapter->req_tx_queues; i++) {
		FUNC5(netdev, "Enabling tx_scrq[%d] irq\n", i);
		if (prev_state == VNIC_CLOSED)
			FUNC0(adapter->tx_scrq[i]->irq);
		FUNC1(adapter, adapter->tx_scrq[i]);
	}

	rc = FUNC10(adapter, IBMVNIC_LOGICAL_LNK_UP);
	if (rc) {
		for (i = 0; i < adapter->req_rx_queues; i++)
			FUNC3(&adapter->napi[i]);
		FUNC8(adapter);
		return rc;
	}

	FUNC7(netdev);

	if (prev_state == VNIC_CLOSED) {
		for (i = 0; i < adapter->req_rx_queues; i++)
			FUNC4(&adapter->napi[i]);
	}

	adapter->state = VNIC_OPEN;
	return rc;
}