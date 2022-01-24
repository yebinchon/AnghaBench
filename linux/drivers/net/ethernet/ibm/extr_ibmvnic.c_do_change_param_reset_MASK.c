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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ibmvnic_rwi {int /*<<< orphan*/  reset_reason; } ;
struct ibmvnic_adapter {int req_rx_queues; int /*<<< orphan*/ * napi; scalar_t__ state; struct net_device* netdev; int /*<<< orphan*/  reset_reason; } ;

/* Variables and functions */
 int IBMVNIC_INIT_FAILED ; 
 int IBMVNIC_OPEN_FAILED ; 
 scalar_t__ VNIC_CLOSED ; 
 scalar_t__ VNIC_OPEN ; 
 scalar_t__ VNIC_PROBED ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvnic_adapter*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct ibmvnic_adapter*) ; 
 int FUNC8 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct ibmvnic_adapter*,int) ; 

__attribute__((used)) static int FUNC16(struct ibmvnic_adapter *adapter,
				 struct ibmvnic_rwi *rwi,
				 u32 reset_state)
{
	struct net_device *netdev = adapter->netdev;
	int i, rc;

	FUNC10(adapter->netdev, "Change param resetting driver (%d)\n",
		   rwi->reset_reason);

	FUNC12(netdev);
	adapter->reset_reason = rwi->reset_reason;

	FUNC2(netdev);

	if (reset_state == VNIC_OPEN) {
		rc = FUNC0(netdev);
		if (rc)
			return rc;
	}

	FUNC14(adapter);
	FUNC15(adapter, 1);
	FUNC13(adapter);

	adapter->state = VNIC_PROBED;

	rc = FUNC7(adapter);

	if (rc) {
		FUNC11(adapter->netdev,
			   "Couldn't initialize crq. rc=%d\n", rc);
		return rc;
	}

	rc = FUNC5(adapter);
	if (rc)
		return IBMVNIC_INIT_FAILED;

	/* If the adapter was in PROBE state prior to the reset,
	 * exit here.
	 */
	if (reset_state == VNIC_PROBED)
		return 0;

	rc = FUNC4(netdev);
	if (rc) {
		adapter->state = reset_state;
		return rc;
	}

	rc = FUNC8(adapter);
	if (rc)
		return rc;

	FUNC3(adapter);

	adapter->state = VNIC_CLOSED;

	if (reset_state == VNIC_CLOSED)
		return 0;

	rc = FUNC1(netdev);
	if (rc)
		return IBMVNIC_OPEN_FAILED;

	/* refresh device's multicast list */
	FUNC6(netdev);

	/* kick napi */
	for (i = 0; i < adapter->req_rx_queues; i++)
		FUNC9(&adapter->napi[i]);

	return 0;
}