#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ MII_BCM54XX_EXP_SEL_ER ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,scalar_t__,int) ; 
 int FUNC2 (struct phy_device*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	struct device_node *np = phydev->mdio.dev.of_node;
	int ret;

	/* Aneg firsly. */
	ret = FUNC2(phydev);

	/* Then we can set up the delay. */
	FUNC0(phydev);

	if (FUNC3(np, "enet-phy-lane-swap")) {
		/* Lane Swap - Undocumented register...magic! */
		ret = FUNC1(phydev, MII_BCM54XX_EXP_SEL_ER + 0x9,
					0x11B);
		if (ret < 0)
			return ret;
	}

	return ret;
}