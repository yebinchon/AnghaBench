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

/* Variables and functions */
 int /*<<< orphan*/  DP83822_DEVADDR ; 
 int DP83822_WOL_CLR_INDICATION ; 
 int /*<<< orphan*/  MII_DP83822_WOL_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int value;

	FUNC0(phydev);

	value = FUNC1(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG);

	FUNC2(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG, value |
		      DP83822_WOL_CLR_INDICATION);

	return 0;
}