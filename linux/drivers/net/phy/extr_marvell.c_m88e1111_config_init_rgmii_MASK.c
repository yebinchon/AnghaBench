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
 int MII_M1111_HWCFG_FIBER_COPPER_RES ; 
 int MII_M1111_HWCFG_MODE_COPPER_RGMII ; 
 int MII_M1111_HWCFG_MODE_FIBER_RGMII ; 
 int MII_M1111_HWCFG_MODE_MASK ; 
 int /*<<< orphan*/  MII_M1111_PHY_EXT_SR ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int temp;
	int err;

	err = FUNC0(phydev);
	if (err < 0)
		return err;

	temp = FUNC1(phydev, MII_M1111_PHY_EXT_SR);
	if (temp < 0)
		return temp;

	temp &= ~(MII_M1111_HWCFG_MODE_MASK);

	if (temp & MII_M1111_HWCFG_FIBER_COPPER_RES)
		temp |= MII_M1111_HWCFG_MODE_FIBER_RGMII;
	else
		temp |= MII_M1111_HWCFG_MODE_COPPER_RGMII;

	return FUNC2(phydev, MII_M1111_PHY_EXT_SR, temp);
}