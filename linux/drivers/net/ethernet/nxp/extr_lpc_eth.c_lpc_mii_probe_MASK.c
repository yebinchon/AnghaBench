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
struct phy_device {int dummy; } ;
struct netdata_local {int duplex; scalar_t__ speed; scalar_t__ link; TYPE_1__* pdev; int /*<<< orphan*/  mii_bus; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 scalar_t__ PHY_INTERFACE_MODE_MII ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  lpc_handle_link_change ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct netdata_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 
 struct phy_device* FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct phy_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct netdata_local *pldat = FUNC5(ndev);
	struct phy_device *phydev = FUNC8(pldat->mii_bus);

	if (!phydev) {
		FUNC3(ndev, "no PHY found\n");
		return -ENODEV;
	}

	/* Attach to the PHY */
	if (FUNC2(&pldat->pdev->dev) == PHY_INTERFACE_MODE_MII)
		FUNC4(ndev, "using MII interface\n");
	else
		FUNC4(ndev, "using RMII interface\n");
	phydev = FUNC7(ndev, FUNC10(phydev),
			     &lpc_handle_link_change,
			     FUNC2(&pldat->pdev->dev));

	if (FUNC0(phydev)) {
		FUNC3(ndev, "Could not attach to PHY\n");
		return FUNC1(phydev);
	}

	FUNC9(phydev, SPEED_100);

	pldat->link = 0;
	pldat->speed = 0;
	pldat->duplex = -1;

	FUNC6(phydev);

	return 0;
}