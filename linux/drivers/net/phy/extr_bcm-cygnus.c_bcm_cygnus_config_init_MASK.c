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
 int /*<<< orphan*/  MII_BCM54XX_ECR ; 
 int MII_BCM54XX_ECR_IM ; 
 int /*<<< orphan*/  MII_BCM54XX_IMR ; 
 int MII_BCM54XX_INT_DUPLEX ; 
 int MII_BCM54XX_INT_LINK ; 
 int MII_BCM54XX_INT_SPEED ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int FUNC2 (struct phy_device*,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	int reg, rc;

	reg = FUNC3(phydev, MII_BCM54XX_ECR);
	if (reg < 0)
		return reg;

	/* Mask interrupts globally. */
	reg |= MII_BCM54XX_ECR_IM;
	rc = FUNC4(phydev, MII_BCM54XX_ECR, reg);
	if (rc)
		return rc;

	/* Unmask events of interest */
	reg = ~(MII_BCM54XX_INT_DUPLEX |
		MII_BCM54XX_INT_SPEED |
		MII_BCM54XX_INT_LINK);
	rc = FUNC4(phydev, MII_BCM54XX_IMR, reg);
	if (rc)
		return rc;

	/* Apply AFE settings for the PHY */
	rc = FUNC0(phydev);
	if (rc)
		return rc;

	/* Advertise EEE */
	rc = FUNC2(phydev, true);
	if (rc)
		return rc;

	/* Enable APD */
	return FUNC1(phydev, false);
}