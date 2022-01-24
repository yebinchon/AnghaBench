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
typedef  int /*<<< orphan*/  u32 ;
struct phylink {scalar_t__ link_an_mode; int /*<<< orphan*/  link_interface; int /*<<< orphan*/  netdev; } ;
struct phy_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MLO_AN_FIXED ; 
 scalar_t__ MLO_AN_INBAND ; 
 scalar_t__ MLO_AN_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC2 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phylink*,struct phy_device*) ; 

int FUNC6(struct phylink *pl, struct device_node *dn,
			   u32 flags)
{
	struct device_node *phy_node;
	struct phy_device *phy_dev;
	int ret;

	/* Fixed links and 802.3z are handled without needing a PHY */
	if (pl->link_an_mode == MLO_AN_FIXED ||
	    (pl->link_an_mode == MLO_AN_INBAND &&
	     FUNC4(pl->link_interface)))
		return 0;

	phy_node = FUNC1(dn, "phy-handle", 0);
	if (!phy_node)
		phy_node = FUNC1(dn, "phy", 0);
	if (!phy_node)
		phy_node = FUNC1(dn, "phy-device", 0);

	if (!phy_node) {
		if (pl->link_an_mode == MLO_AN_PHY)
			return -ENODEV;
		return 0;
	}

	phy_dev = FUNC2(pl->netdev, phy_node, flags,
				pl->link_interface);
	/* We're done with the phy_node handle */
	FUNC0(phy_node);

	if (!phy_dev)
		return -ENODEV;

	ret = FUNC5(pl, phy_dev);
	if (ret)
		FUNC3(phy_dev);

	return ret;
}