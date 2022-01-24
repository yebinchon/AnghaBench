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
struct nicvf {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_LOOPBACK ; 
 struct nicvf* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			      netdev_features_t features)
{
	struct nicvf *nic = FUNC0(netdev);
	netdev_features_t changed = features ^ netdev->features;

	if (changed & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC3(nic, features);

	if ((changed & NETIF_F_LOOPBACK) && FUNC1(netdev))
		return FUNC2(nic, features);

	return 0;
}