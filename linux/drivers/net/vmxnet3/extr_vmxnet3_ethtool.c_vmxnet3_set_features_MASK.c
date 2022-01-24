#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmxnet3_adapter {int /*<<< orphan*/  cmd_lock; TYPE_3__* shared; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;
struct TYPE_4__ {int /*<<< orphan*/  uptFeatures; } ;
struct TYPE_5__ {TYPE_1__ misc; } ;
struct TYPE_6__ {TYPE_2__ devRead; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_LRO ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  UPT1_F_LRO ; 
 int /*<<< orphan*/  UPT1_F_RXCSUM ; 
 int /*<<< orphan*/  UPT1_F_RXVLAN ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_FEATURE ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmxnet3_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct net_device *netdev, netdev_features_t features)
{
	struct vmxnet3_adapter *adapter = FUNC1(netdev);
	unsigned long flags;
	netdev_features_t changed = features ^ netdev->features;

	if (changed & (NETIF_F_RXCSUM | NETIF_F_LRO |
		       NETIF_F_HW_VLAN_CTAG_RX)) {
		if (features & NETIF_F_RXCSUM)
			adapter->shared->devRead.misc.uptFeatures |=
			UPT1_F_RXCSUM;
		else
			adapter->shared->devRead.misc.uptFeatures &=
			~UPT1_F_RXCSUM;

		/* update hardware LRO capability accordingly */
		if (features & NETIF_F_LRO)
			adapter->shared->devRead.misc.uptFeatures |=
							UPT1_F_LRO;
		else
			adapter->shared->devRead.misc.uptFeatures &=
							~UPT1_F_LRO;

		if (features & NETIF_F_HW_VLAN_CTAG_RX)
			adapter->shared->devRead.misc.uptFeatures |=
			UPT1_F_RXVLAN;
		else
			adapter->shared->devRead.misc.uptFeatures &=
			~UPT1_F_RXVLAN;

		FUNC2(&adapter->cmd_lock, flags);
		FUNC0(adapter, VMXNET3_REG_CMD,
				       VMXNET3_CMD_UPDATE_FEATURE);
		FUNC3(&adapter->cmd_lock, flags);
	}
	return 0;
}