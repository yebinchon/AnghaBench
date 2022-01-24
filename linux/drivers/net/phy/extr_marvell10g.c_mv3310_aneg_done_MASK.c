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
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 scalar_t__ MDIO_STAT1 ; 
 int MDIO_STAT1_LSTATUS ; 
 scalar_t__ MV_PCS_BASE_R ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int val;

	val = FUNC1(phydev, MDIO_MMD_PCS, MV_PCS_BASE_R + MDIO_STAT1);
	if (val < 0)
		return val;

	if (val & MDIO_STAT1_LSTATUS)
		return 1;

	return FUNC0(phydev);
}