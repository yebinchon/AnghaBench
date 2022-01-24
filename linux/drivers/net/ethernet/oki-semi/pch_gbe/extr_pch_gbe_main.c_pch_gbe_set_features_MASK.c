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
struct pch_gbe_adapter {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_RXCSUM ; 
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
	netdev_features_t features)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);
	netdev_features_t changed = features ^ netdev->features;

	if (!(changed & NETIF_F_RXCSUM))
		return 0;

	if (FUNC1(netdev))
		FUNC2(adapter);
	else
		FUNC3(adapter);

	return 0;
}