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
struct port_info {int /*<<< orphan*/  viid; TYPE_1__* adapter; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  pf; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 struct port_info* FUNC0 (struct net_device*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, netdev_features_t features)
{
	const struct port_info *pi = FUNC0(dev);
	netdev_features_t changed = dev->features ^ features;
	int err;

	if (!(changed & NETIF_F_HW_VLAN_CTAG_RX))
		return 0;

	err = FUNC1(pi->adapter, pi->adapter->pf, pi->viid, -1,
			    -1, -1, -1,
			    !!(features & NETIF_F_HW_VLAN_CTAG_RX), true);
	if (FUNC2(err))
		dev->features = features ^ NETIF_F_HW_VLAN_CTAG_RX;
	return err;
}