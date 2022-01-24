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
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_LED_FC_REG ; 
 int HNS_PHY_PAGE_COPPER ; 
 int HNS_PHY_PAGE_LED ; 
 int /*<<< orphan*/  HNS_PHY_PAGE_REG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, int value)
{
	int retval;
	struct phy_device *phy_dev = netdev->phydev;

	retval = FUNC1(phy_dev, HNS_PHY_PAGE_REG, HNS_PHY_PAGE_LED);
	retval |= FUNC1(phy_dev, HNS_LED_FC_REG, value);
	retval |= FUNC1(phy_dev, HNS_PHY_PAGE_REG, HNS_PHY_PAGE_COPPER);
	if (retval) {
		FUNC0(netdev, "mdiobus_write fail !\n");
		return retval;
	}
	return 0;
}