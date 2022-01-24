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
struct nic {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_RXALL ; 
 int NETIF_F_RXFCS ; 
 int /*<<< orphan*/  e100_configure ; 
 int /*<<< orphan*/  FUNC0 (struct nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nic* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
			     netdev_features_t features)
{
	struct nic *nic = FUNC1(netdev);
	netdev_features_t changed = features ^ netdev->features;

	if (!(changed & (NETIF_F_RXFCS | NETIF_F_RXALL)))
		return 0;

	netdev->features = features;
	FUNC0(nic, NULL, e100_configure);
	return 1;
}