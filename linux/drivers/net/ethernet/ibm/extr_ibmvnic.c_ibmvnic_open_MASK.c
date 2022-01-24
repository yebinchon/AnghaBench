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
struct ibmvnic_adapter {scalar_t__ state; scalar_t__ failover_pending; } ;

/* Variables and functions */
 scalar_t__ VNIC_CLOSED ; 
 scalar_t__ VNIC_OPEN ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct ibmvnic_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvnic_adapter*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC4(netdev);
	int rc;

	/* If device failover is pending, just set device state and return.
	 * Device operation will be handled by reset routine.
	 */
	if (adapter->failover_pending) {
		adapter->state = VNIC_OPEN;
		return 0;
	}

	if (adapter->state != VNIC_CLOSED) {
		rc = FUNC1(netdev);
		if (rc)
			return rc;

		rc = FUNC2(adapter);
		if (rc) {
			FUNC3(netdev, "failed to initialize resources\n");
			FUNC5(adapter);
			return rc;
		}
	}

	rc = FUNC0(netdev);

	return rc;
}