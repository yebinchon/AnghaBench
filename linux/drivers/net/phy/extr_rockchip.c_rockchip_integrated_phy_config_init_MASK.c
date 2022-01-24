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
 int MII_AUTO_MDIX_EN ; 
 int /*<<< orphan*/  MII_INTERNAL_CTRL_STATUS ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int val, ret;

	/*
	 * The auto MIDX has linked problem on some board,
	 * workround to disable auto MDIX.
	 */
	val = FUNC0(phydev, MII_INTERNAL_CTRL_STATUS);
	if (val < 0)
		return val;
	val &= ~MII_AUTO_MDIX_EN;
	ret = FUNC1(phydev, MII_INTERNAL_CTRL_STATUS, val);
	if (ret)
		return ret;

	return FUNC2(phydev);
}