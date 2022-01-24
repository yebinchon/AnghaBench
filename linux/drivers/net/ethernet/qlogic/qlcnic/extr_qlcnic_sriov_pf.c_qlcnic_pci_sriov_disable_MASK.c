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
struct qlcnic_adapter {int /*<<< orphan*/  portnum; struct net_device* netdev; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct qlcnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	if (FUNC5(adapter->pdev)) {
		FUNC2(adapter->netdev,
			   "SR-IOV VFs belonging to port %d are assigned to VMs. SR-IOV can not be disabled on this port\n",
			   adapter->portnum);
		FUNC3(adapter->netdev,
			    "Please detach SR-IOV VFs belonging to port %d from VMs, and then try to disable SR-IOV on this port\n",
			    adapter->portnum);
		return -EPERM;
	}

	FUNC9(adapter);

	FUNC10();
	if (FUNC4(netdev))
		FUNC0(adapter, netdev);

	FUNC7(adapter);

	FUNC8(adapter);

	/* After disabling SRIOV re-init the driver in default mode
	   configure opmode based on op_mode of function
	 */
	if (FUNC6(adapter)) {
		FUNC11();
		return -EIO;
	}

	if (FUNC4(netdev))
		FUNC1(adapter, netdev);

	FUNC11();
	return 0;
}