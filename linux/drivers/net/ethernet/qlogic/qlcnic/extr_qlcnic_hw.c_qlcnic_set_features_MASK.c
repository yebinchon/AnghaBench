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
struct qlcnic_adapter {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int EIO ; 
 int NETIF_F_LRO ; 
 int QLCNIC_LRO_ENABLED ; 
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 

int FUNC4(struct net_device *netdev, netdev_features_t features)
{
	struct qlcnic_adapter *adapter = FUNC0(netdev);
	netdev_features_t changed = netdev->features ^ features;
	int hw_lro = (features & NETIF_F_LRO) ? QLCNIC_LRO_ENABLED : 0;

	if (!(changed & NETIF_F_LRO))
		return 0;

	netdev->features ^= NETIF_F_LRO;

	if (FUNC2(adapter, hw_lro))
		return -EIO;

	if (!hw_lro && FUNC1(adapter)) {
		if (FUNC3(adapter))
			return -EIO;
	}

	return 0;
}