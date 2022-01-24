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
struct TYPE_2__ {int /*<<< orphan*/  link_state; int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_1__ logical_link_state; } ;
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int init_done_rc; int /*<<< orphan*/  init_done; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  crq ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVNIC_CRQ_CMD ; 
 int /*<<< orphan*/  LOGICAL_LINK_STATE ; 
 int FUNC0 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ibmvnic_adapter *adapter, u8 link_state)
{
	struct net_device *netdev = adapter->netdev;
	unsigned long timeout = FUNC3(30000);
	union ibmvnic_crq crq;
	bool resend;
	int rc;

	FUNC4(netdev, "setting link state %d\n", link_state);

	FUNC2(&crq, 0, sizeof(crq));
	crq.logical_link_state.first = IBMVNIC_CRQ_CMD;
	crq.logical_link_state.cmd = LOGICAL_LINK_STATE;
	crq.logical_link_state.link_state = link_state;

	do {
		resend = false;

		FUNC7(&adapter->init_done);
		rc = FUNC0(adapter, &crq);
		if (rc) {
			FUNC5(netdev, "Failed to set link state\n");
			return rc;
		}

		if (!FUNC8(&adapter->init_done,
						 timeout)) {
			FUNC5(netdev, "timeout setting link state\n");
			return -1;
		}

		if (adapter->init_done_rc == 1) {
			/* Partuial success, delay and re-send */
			FUNC1(1000);
			resend = true;
		} else if (adapter->init_done_rc) {
			FUNC6(netdev, "Unable to set link state, rc=%d\n",
				    adapter->init_done_rc);
			return adapter->init_done_rc;
		}
	} while (resend);

	return 0;
}