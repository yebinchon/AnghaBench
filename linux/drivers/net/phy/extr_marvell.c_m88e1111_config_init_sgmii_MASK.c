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
 int /*<<< orphan*/  MII_M1111_HWCFG_FIBER_COPPER_AUTO ; 
 int /*<<< orphan*/  MII_M1111_HWCFG_MODE_SGMII_NO_CLK ; 
 int /*<<< orphan*/  MII_MARVELL_COPPER_PAGE ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int err;

	err = FUNC0(
		phydev,
		MII_M1111_HWCFG_MODE_SGMII_NO_CLK,
		MII_M1111_HWCFG_FIBER_COPPER_AUTO);
	if (err < 0)
		return err;

	/* make sure copper is selected */
	return FUNC1(phydev, MII_MARVELL_COPPER_PAGE);
}