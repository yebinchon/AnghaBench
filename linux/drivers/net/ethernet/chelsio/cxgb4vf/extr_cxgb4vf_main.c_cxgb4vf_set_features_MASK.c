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
struct port_info {int /*<<< orphan*/  viid; int /*<<< orphan*/  adapter; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 struct port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
	netdev_features_t features)
{
	struct port_info *pi = FUNC0(dev);
	netdev_features_t changed = dev->features ^ features;

	if (changed & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC1(pi->adapter, pi->viid, -1, -1, -1, -1,
				features & NETIF_F_HW_VLAN_CTAG_TX, 0);

	return 0;
}