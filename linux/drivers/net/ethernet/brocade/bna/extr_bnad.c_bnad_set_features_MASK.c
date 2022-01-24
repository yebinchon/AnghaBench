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
struct net_device {int features; } ;
struct bnad {int /*<<< orphan*/  bna_lock; TYPE_1__* rx_info; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bnad* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, netdev_features_t features)
{
	struct bnad *bnad = FUNC2(dev);
	netdev_features_t changed = features ^ dev->features;

	if ((changed & NETIF_F_HW_VLAN_CTAG_RX) && FUNC3(dev)) {
		unsigned long flags;

		FUNC4(&bnad->bna_lock, flags);

		if (features & NETIF_F_HW_VLAN_CTAG_RX)
			FUNC1(bnad->rx_info[0].rx);
		else
			FUNC0(bnad->rx_info[0].rx);

		FUNC5(&bnad->bna_lock, flags);
	}

	return 0;
}