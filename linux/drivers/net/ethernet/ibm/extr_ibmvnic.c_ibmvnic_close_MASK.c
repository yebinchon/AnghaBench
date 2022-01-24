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
struct ibmvnic_adapter {int /*<<< orphan*/  state; scalar_t__ failover_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  VNIC_CLOSED ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ibmvnic_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC2(netdev);
	int rc;

	/* If device failover is pending, just set device state and return.
	 * Device operation will be handled by reset routine.
	 */
	if (adapter->failover_pending) {
		adapter->state = VNIC_CLOSED;
		return 0;
	}

	rc = FUNC0(netdev);
	FUNC1(netdev);

	return rc;
}