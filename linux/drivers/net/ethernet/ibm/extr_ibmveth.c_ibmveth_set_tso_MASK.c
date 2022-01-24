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
typedef  int u32 ;
struct net_device {int features; } ;
struct ibmveth_adapter {int pool_config; int fw_large_send_support; int large_send; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int EIO ; 
 long H_SUCCESS ; 
 unsigned long IBMVETH_ILLAN_LRG_SND_SUPPORT ; 
 unsigned long IBMVETH_ILLAN_LRG_SR_ENABLED ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 long FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,long) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct ibmveth_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  old_large_send ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, u32 data)
{
	struct ibmveth_adapter *adapter = FUNC5(dev);
	unsigned long set_attr, clr_attr, ret_attr;
	long ret1, ret2;
	int rc1 = 0, rc2 = 0;
	int restart = 0;

	if (FUNC6(dev)) {
		restart = 1;
		adapter->pool_config = 1;
		FUNC1(dev);
		adapter->pool_config = 0;
	}

	set_attr = 0;
	clr_attr = 0;

	if (data)
		set_attr = IBMVETH_ILLAN_LRG_SR_ENABLED;
	else
		clr_attr = IBMVETH_ILLAN_LRG_SR_ENABLED;

	ret1 = FUNC0(adapter->vdev->unit_address, 0, 0, &ret_attr);

	if (ret1 == H_SUCCESS && (ret_attr & IBMVETH_ILLAN_LRG_SND_SUPPORT) &&
	    !old_large_send) {
		ret2 = FUNC0(adapter->vdev->unit_address, clr_attr,
					  set_attr, &ret_attr);

		if (ret2 != H_SUCCESS) {
			FUNC3(dev, "unable to change tso settings. %d rc=%ld\n",
				   data, ret2);

			FUNC0(adapter->vdev->unit_address,
					   set_attr, clr_attr, &ret_attr);

			if (data == 1)
				dev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);
			rc1 = -EIO;

		} else {
			adapter->fw_large_send_support = data;
			adapter->large_send = data;
		}
	} else {
		/* Older firmware version of large send offload does not
		 * support tcp6/ipv6
		 */
		if (data == 1) {
			dev->features &= ~NETIF_F_TSO6;
			FUNC4(dev, "TSO feature requires all partitions to have updated driver");
		}
		adapter->large_send = data;
	}

	if (restart)
		rc2 = FUNC2(dev);

	return rc1 ? rc1 : rc2;
}