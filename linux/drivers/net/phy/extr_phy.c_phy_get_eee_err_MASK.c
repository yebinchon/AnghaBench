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
struct phy_device {int /*<<< orphan*/  drv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_PCS_EEE_WK_ERR ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct phy_device *phydev)
{
	if (!phydev->drv)
		return -EIO;

	return FUNC0(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_WK_ERR);
}