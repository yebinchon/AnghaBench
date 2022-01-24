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
struct net_device {int features; } ;
struct ixgb_adapter {int rx_csum; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_adapter*) ; 
 struct ixgb_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, netdev_features_t features)
{
	struct ixgb_adapter *adapter = FUNC4(netdev);
	netdev_features_t changed = features ^ netdev->features;

	if (!(changed & (NETIF_F_RXCSUM|NETIF_F_HW_VLAN_CTAG_RX)))
		return 0;

	adapter->rx_csum = !!(features & NETIF_F_RXCSUM);

	if (FUNC5(netdev)) {
		FUNC0(adapter, true);
		FUNC3(adapter);
		FUNC2(netdev);
	} else
		FUNC1(adapter);

	return 0;
}