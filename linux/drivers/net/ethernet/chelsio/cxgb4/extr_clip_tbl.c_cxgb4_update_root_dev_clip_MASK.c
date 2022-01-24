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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int VLAN_N_VID ; 
 struct net_device* FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *dev)
{
	struct net_device *root_dev = NULL;
	int i, ret = 0;

	/* First populate the real net device's IPv6 addresses */
	ret = FUNC1(dev, dev);
	if (ret)
		return ret;

	/* Parse all bond and vlan devices layered on top of the physical dev */
	root_dev = FUNC3(dev);
	if (root_dev) {
		ret = FUNC1(root_dev, dev);
		if (ret)
			return ret;
	}

	for (i = 0; i < VLAN_N_VID; i++) {
		root_dev = FUNC0(dev, FUNC2(ETH_P_8021Q), i);
		if (!root_dev)
			continue;

		ret = FUNC1(root_dev, dev);
		if (ret)
			break;
	}

	return ret;
}