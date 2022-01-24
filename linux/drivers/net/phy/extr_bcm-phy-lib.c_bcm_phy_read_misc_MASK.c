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
typedef  int u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA ; 
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC ; 
 int /*<<< orphan*/  MII_BCM54XX_AUX_CTL ; 
 int MII_BCM_CHANNEL_WIDTH ; 
 int FUNC0 (struct phy_device*,int) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct phy_device *phydev,
		      u16 reg, u16 chl)
{
	int rc;
	int tmp;

	rc = FUNC2(phydev, MII_BCM54XX_AUX_CTL,
		       MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
	if (rc < 0)
		return rc;

	tmp = FUNC1(phydev, MII_BCM54XX_AUX_CTL);
	tmp |= MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA;
	rc = FUNC2(phydev, MII_BCM54XX_AUX_CTL, tmp);
	if (rc < 0)
		return rc;

	tmp = (chl * MII_BCM_CHANNEL_WIDTH) | reg;
	rc = FUNC0(phydev, tmp);

	return rc;
}