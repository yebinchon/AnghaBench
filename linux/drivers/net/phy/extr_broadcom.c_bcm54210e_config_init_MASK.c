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
struct phy_device {int dev_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM54810_SHD_CLK_CTL ; 
 int BCM54810_SHD_CLK_CTL_GTXCLK_EN ; 
 int CTL1000_AS_MASTER ; 
 int CTL1000_ENABLE_MASTER ; 
 int MII_BCM54XX_AUXCTL_MISC_WREN ; 
 int /*<<< orphan*/  MII_BCM54XX_AUXCTL_SHDWSEL_MISC ; 
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int PHY_BRCM_EN_MASTER_MODE ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int val;

	val = FUNC0(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
	val &= ~MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN;
	val |= MII_BCM54XX_AUXCTL_MISC_WREN;
	FUNC1(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC, val);

	val = FUNC2(phydev, BCM54810_SHD_CLK_CTL);
	val &= ~BCM54810_SHD_CLK_CTL_GTXCLK_EN;
	FUNC3(phydev, BCM54810_SHD_CLK_CTL, val);

	if (phydev->dev_flags & PHY_BRCM_EN_MASTER_MODE) {
		val = FUNC4(phydev, MII_CTRL1000);
		val |= CTL1000_AS_MASTER | CTL1000_ENABLE_MASTER;
		FUNC5(phydev, MII_CTRL1000, val);
	}

	return 0;
}