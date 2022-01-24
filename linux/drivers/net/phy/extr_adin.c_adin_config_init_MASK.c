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
struct phy_device {int /*<<< orphan*/  interface; int /*<<< orphan*/  mdix_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_PHY_EDPD_DFLT_TX_MSECS ; 
 int /*<<< orphan*/  ETH_TP_MDI_AUTO ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int rc;

	phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

	rc = FUNC0(phydev);
	if (rc < 0)
		return rc;

	rc = FUNC1(phydev);
	if (rc < 0)
		return rc;

	rc = FUNC2(phydev, 4);
	if (rc < 0)
		return rc;

	rc = FUNC3(phydev, ETHTOOL_PHY_EDPD_DFLT_TX_MSECS);
	if (rc < 0)
		return rc;

	FUNC5(phydev, "PHY is using mode '%s'\n",
		   FUNC4(phydev->interface));

	return 0;
}