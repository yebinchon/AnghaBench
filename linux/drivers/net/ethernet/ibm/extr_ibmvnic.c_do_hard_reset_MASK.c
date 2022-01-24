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
struct ibmvnic_adapter {scalar_t__ state; struct net_device* netdev; int /*<<< orphan*/  init_done; int /*<<< orphan*/  reset_reason; } ;

/* Variables and functions */
 int IBMVNIC_OPEN_FAILED ; 
 scalar_t__ VNIC_CLOSED ; 
 scalar_t__ VNIC_PROBED ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvnic_adapter*) ; 
 int FUNC3 (struct ibmvnic_adapter*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ibmvnic_adapter*) ; 
 int FUNC6 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ibmvnic_adapter *adapter,
			 struct ibmvnic_rwi *rwi, u32 reset_state)
{
	struct net_device *netdev = adapter->netdev;
	int rc;

	FUNC7(adapter->netdev, "Hard resetting driver (%d)\n",
		   rwi->reset_reason);

	FUNC9(netdev);
	adapter->reset_reason = rwi->reset_reason;

	FUNC1(netdev);
	FUNC12(adapter);
	FUNC13(adapter, 0);
	FUNC11(adapter);

	/* remove the closed state so when we call open it appears
	 * we are coming from the probed state.
	 */
	adapter->state = VNIC_PROBED;

	FUNC10(&adapter->init_done);
	rc = FUNC5(adapter);
	if (rc) {
		FUNC8(adapter->netdev,
			   "Couldn't initialize crq. rc=%d\n", rc);
		return rc;
	}

	rc = FUNC3(adapter);
	if (rc)
		return rc;

	/* If the adapter was in PROBE state prior to the reset,
	 * exit here.
	 */
	if (reset_state == VNIC_PROBED)
		return 0;

	rc = FUNC4(netdev);
	if (rc) {
		adapter->state = VNIC_PROBED;
		return 0;
	}

	rc = FUNC6(adapter);
	if (rc)
		return rc;

	FUNC2(adapter);
	adapter->state = VNIC_CLOSED;

	if (reset_state == VNIC_CLOSED)
		return 0;

	rc = FUNC0(netdev);
	if (rc)
		return IBMVNIC_OPEN_FAILED;

	return 0;
}