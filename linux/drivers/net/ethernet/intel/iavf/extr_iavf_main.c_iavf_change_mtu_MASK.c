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
struct net_device {int mtu; } ;
struct iavf_adapter {int /*<<< orphan*/  reset_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  vsi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  IAVF_FLAG_RESET_NEEDED ; 
 int /*<<< orphan*/  IAVF_FLAG_SERVICE_CLIENT_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iavf_wq ; 
 struct iavf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int new_mtu)
{
	struct iavf_adapter *adapter = FUNC2(netdev);

	netdev->mtu = new_mtu;
	if (FUNC0(adapter)) {
		FUNC1(&adapter->vsi);
		adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
	}
	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
	FUNC3(iavf_wq, &adapter->reset_task);

	return 0;
}