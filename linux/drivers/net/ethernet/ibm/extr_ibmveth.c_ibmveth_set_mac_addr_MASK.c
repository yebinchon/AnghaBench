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
typedef  int /*<<< orphan*/  u64 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ibmveth_adapter {int /*<<< orphan*/  netdev; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct ibmveth_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *p)
{
	struct ibmveth_adapter *adapter = FUNC5(dev);
	struct sockaddr *addr = p;
	u64 mac_address;
	int rc;

	if (!FUNC3(addr->sa_data))
		return -EADDRNOTAVAIL;

	mac_address = FUNC2(addr->sa_data);
	rc = FUNC1(adapter->vdev->unit_address, mac_address);
	if (rc) {
		FUNC4(adapter->netdev, "h_change_logical_lan_mac failed with rc=%d\n", rc);
		return rc;
	}

	FUNC0(dev->dev_addr, addr->sa_data);

	return 0;
}