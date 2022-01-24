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
struct e1000_adapter {int rx_csum; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXALL ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 struct e1000_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
	netdev_features_t features)
{
	struct e1000_adapter *adapter = FUNC3(netdev);
	netdev_features_t changed = features ^ netdev->features;

	if (changed & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC2(netdev, features);

	if (!(changed & (NETIF_F_RXCSUM | NETIF_F_RXALL)))
		return 0;

	netdev->features = features;
	adapter->rx_csum = !!(features & NETIF_F_RXCSUM);

	if (FUNC4(netdev))
		FUNC0(adapter);
	else
		FUNC1(adapter);

	return 1;
}