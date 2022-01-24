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
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM54XX_EXP_DATA ; 
 int /*<<< orphan*/  MII_BCM54XX_EXP_SEL ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct phy_device *phydev, u16 reg)
{
	int val;

	val = FUNC1(phydev, MII_BCM54XX_EXP_SEL, reg);
	if (val < 0)
		return val;

	val = FUNC0(phydev, MII_BCM54XX_EXP_DATA);

	/* Restore default value.  It's O.K. if this write fails. */
	FUNC1(phydev, MII_BCM54XX_EXP_SEL, 0);

	return val;
}