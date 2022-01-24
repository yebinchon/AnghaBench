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
struct ena_adapter {int /*<<< orphan*/  num_queues; } ;

/* Variables and functions */
 int FUNC0 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ifup ; 
 struct ena_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct ena_adapter *adapter = FUNC1(netdev);
	int rc;

	/* Notify the stack of the actual queue counts. */
	rc = FUNC4(netdev, adapter->num_queues);
	if (rc) {
		FUNC2(adapter, ifup, netdev, "Can't set num tx queues\n");
		return rc;
	}

	rc = FUNC3(netdev, adapter->num_queues);
	if (rc) {
		FUNC2(adapter, ifup, netdev, "Can't set num rx queues\n");
		return rc;
	}

	rc = FUNC0(adapter);
	if (rc)
		return rc;

	return rc;
}