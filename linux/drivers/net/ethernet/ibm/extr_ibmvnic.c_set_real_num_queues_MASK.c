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
struct ibmvnic_adapter {int /*<<< orphan*/  req_rx_queues; int /*<<< orphan*/  req_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct ibmvnic_adapter* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC2(netdev);
	int rc;

	FUNC0(netdev, "Setting real tx/rx queues (%llx/%llx)\n",
		   adapter->req_tx_queues, adapter->req_rx_queues);

	rc = FUNC4(netdev, adapter->req_tx_queues);
	if (rc) {
		FUNC1(netdev, "failed to set the number of tx queues\n");
		return rc;
	}

	rc = FUNC3(netdev, adapter->req_rx_queues);
	if (rc)
		FUNC1(netdev, "failed to set the number of rx queues\n");

	return rc;
}