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
struct phy_device {scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct emac_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*,int) ; 
 struct emac_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct emac_adapter *adpt = FUNC3(netdev);
	struct phy_device *phydev = netdev->phydev;

	if (phydev->link) {
		FUNC0(adpt);
		FUNC2(adpt, true);
	} else {
		FUNC2(adpt, false);
		FUNC1(adpt);
	}

	FUNC4(phydev);
}