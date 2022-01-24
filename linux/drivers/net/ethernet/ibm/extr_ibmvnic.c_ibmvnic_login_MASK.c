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
struct net_device {int dummy; } ;
struct ibmvnic_adapter {scalar_t__ init_done_rc; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  init_done; } ;

/* Variables and functions */
 int IBMVNIC_MAX_QUEUES ; 
 scalar_t__ PARTIALSUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ibmvnic_adapter*) ; 
 int FUNC2 (struct ibmvnic_adapter*) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct ibmvnic_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvnic_adapter*) ; 
 int FUNC10 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC5(netdev);
	unsigned long timeout = FUNC3(30000);
	int retry_count = 0;
	bool retry;
	int rc;

	do {
		retry = false;
		if (retry_count > IBMVNIC_MAX_QUEUES) {
			FUNC6(netdev, "Login attempts exceeded\n");
			return -1;
		}

		adapter->init_done_rc = 0;
		FUNC7(&adapter->init_done);
		rc = FUNC10(adapter);
		if (rc) {
			FUNC6(netdev, "Unable to login\n");
			return rc;
		}

		if (!FUNC11(&adapter->init_done,
						 timeout)) {
			FUNC6(netdev, "Login timed out\n");
			return -1;
		}

		if (adapter->init_done_rc == PARTIALSUCCESS) {
			retry_count++;
			FUNC8(adapter, 1);

			retry = true;
			FUNC4(netdev,
				   "Received partial success, retrying...\n");
			adapter->init_done_rc = 0;
			FUNC7(&adapter->init_done);
			FUNC9(adapter);
			if (!FUNC11(&adapter->init_done,
							 timeout)) {
				FUNC6(netdev,
					    "Capabilities query timed out\n");
				return -1;
			}

			rc = FUNC2(adapter);
			if (rc) {
				FUNC6(netdev,
					    "SCRQ initialization failed\n");
				return -1;
			}

			rc = FUNC1(adapter);
			if (rc) {
				FUNC6(netdev,
					    "SCRQ irq initialization failed\n");
				return -1;
			}
		} else if (adapter->init_done_rc) {
			FUNC6(netdev, "Adapter login failed\n");
			return -1;
		}
	} while (retry);

	FUNC0(netdev, adapter->mac_addr);

	return 0;
}