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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ibmvnic_rwi {scalar_t__ reset_reason; } ;
struct ibmvnic_adapter {scalar_t__ reset_reason; scalar_t__ req_rx_queues; scalar_t__ req_tx_queues; scalar_t__ req_rx_add_entries_per_subcrq; scalar_t__ req_tx_entries_per_subcrq; scalar_t__ state; int /*<<< orphan*/ * napi; struct net_device* netdev; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int IBMVNIC_INIT_FAILED ; 
 int /*<<< orphan*/  IBMVNIC_LOGICAL_LNK_DN ; 
 int IBMVNIC_OPEN_FAILED ; 
 int /*<<< orphan*/  NETDEV_NOTIFY_PEERS ; 
 scalar_t__ VNIC_CLOSED ; 
 scalar_t__ VNIC_CLOSING ; 
 scalar_t__ VNIC_OPEN ; 
 scalar_t__ VNIC_PROBED ; 
 scalar_t__ VNIC_RESET_FAILOVER ; 
 scalar_t__ VNIC_RESET_MOBILITY ; 
 scalar_t__ VNIC_RESET_NON_FATAL ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvnic_adapter*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ibmvnic_adapter*) ; 
 int FUNC6 (struct ibmvnic_adapter*) ; 
 int FUNC7 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct ibmvnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct ibmvnic_adapter*) ; 
 int FUNC19 (struct ibmvnic_adapter*) ; 
 int FUNC20 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int FUNC23 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct ibmvnic_adapter *adapter,
		    struct ibmvnic_rwi *rwi, u32 reset_state)
{
	u64 old_num_rx_queues, old_num_tx_queues;
	u64 old_num_rx_slots, old_num_tx_slots;
	struct net_device *netdev = adapter->netdev;
	int i, rc;

	FUNC11(adapter->netdev, "Re-setting driver (%d)\n",
		   rwi->reset_reason);

	FUNC21();

	FUNC13(netdev);
	adapter->reset_reason = rwi->reset_reason;

	old_num_rx_queues = adapter->req_rx_queues;
	old_num_tx_queues = adapter->req_tx_queues;
	old_num_rx_slots = adapter->req_rx_add_entries_per_subcrq;
	old_num_tx_slots = adapter->req_tx_entries_per_subcrq;

	FUNC2(netdev);

	if (reset_state == VNIC_OPEN &&
	    adapter->reset_reason != VNIC_RESET_MOBILITY &&
	    adapter->reset_reason != VNIC_RESET_FAILOVER) {
		adapter->state = VNIC_CLOSING;

		/* Release the RTNL lock before link state change and
		 * re-acquire after the link state change to allow
		 * linkwatch_event to grab the RTNL lock and run during
		 * a reset.
		 */
		FUNC22();
		rc = FUNC23(adapter, IBMVNIC_LOGICAL_LNK_DN);
		FUNC21();
		if (rc)
			goto out;

		if (adapter->state != VNIC_CLOSING) {
			rc = -1;
			goto out;
		}

		adapter->state = VNIC_CLOSED;
	}

	if (adapter->reset_reason != VNIC_RESET_NON_FATAL) {
		/* remove the closed state so when we call open it appears
		 * we are coming from the probed state.
		 */
		adapter->state = VNIC_PROBED;

		if (adapter->reset_reason == VNIC_RESET_MOBILITY) {
			rc = FUNC5(adapter);
			FUNC16(adapter, 1);
		} else {
			rc = FUNC6(adapter);
			if (!rc)
				rc = FUNC24(adapter->vdev);
		}

		if (rc) {
			FUNC12(adapter->netdev,
				   "Couldn't initialize crq. rc=%d\n", rc);
			goto out;
		}

		rc = FUNC7(adapter);
		if (rc) {
			rc = IBMVNIC_INIT_FAILED;
			goto out;
		}

		/* If the adapter was in PROBE state prior to the reset,
		 * exit here.
		 */
		if (reset_state == VNIC_PROBED) {
			rc = 0;
			goto out;
		}

		rc = FUNC4(netdev);
		if (rc) {
			adapter->state = reset_state;
			goto out;
		}

		if (adapter->req_rx_queues != old_num_rx_queues ||
		    adapter->req_tx_queues != old_num_tx_queues ||
		    adapter->req_rx_add_entries_per_subcrq !=
		    old_num_rx_slots ||
		    adapter->req_tx_entries_per_subcrq !=
		    old_num_tx_slots) {
			FUNC15(adapter);
			FUNC17(adapter);
			FUNC14(adapter);
			FUNC18(adapter);

			rc = FUNC9(adapter);
			if (rc)
				goto out;

		} else {
			rc = FUNC20(adapter);
			if (rc)
				goto out;

			rc = FUNC19(adapter);
			if (rc)
				goto out;
		}
		FUNC3(adapter);
	}
	adapter->state = VNIC_CLOSED;

	if (reset_state == VNIC_CLOSED) {
		rc = 0;
		goto out;
	}

	rc = FUNC0(netdev);
	if (rc) {
		rc = IBMVNIC_OPEN_FAILED;
		goto out;
	}

	/* refresh device's multicast list */
	FUNC8(netdev);

	/* kick napi */
	for (i = 0; i < adapter->req_rx_queues; i++)
		FUNC10(&adapter->napi[i]);

	if (adapter->reset_reason != VNIC_RESET_FAILOVER)
		FUNC1(NETDEV_NOTIFY_PEERS, netdev);

	rc = 0;

out:
	FUNC22();

	return rc;
}