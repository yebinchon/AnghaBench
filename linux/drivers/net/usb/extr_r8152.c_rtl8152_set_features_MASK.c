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
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				netdev_features_t features)
{
	netdev_features_t changed = features ^ dev->features;
	struct r8152 *tp = FUNC2(dev);
	int ret;

	ret = FUNC4(tp->intf);
	if (ret < 0)
		goto out;

	FUNC0(&tp->control);

	if (changed & NETIF_F_HW_VLAN_CTAG_RX) {
		if (features & NETIF_F_HW_VLAN_CTAG_RX)
			FUNC3(tp, true);
		else
			FUNC3(tp, false);
	}

	FUNC1(&tp->control);

	FUNC5(tp->intf);

out:
	return ret;
}