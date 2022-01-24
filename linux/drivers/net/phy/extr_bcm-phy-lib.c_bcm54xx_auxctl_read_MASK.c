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
 int MII_BCM54XX_AUXCTL_SHDWSEL_MASK ; 
 int MII_BCM54XX_AUXCTL_SHDWSEL_READ_SHIFT ; 
 int /*<<< orphan*/  MII_BCM54XX_AUX_CTL ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct phy_device *phydev, u16 regnum)
{
	/* The register must be written to both the Shadow Register Select and
	 * the Shadow Read Register Selector
	 */
	FUNC1(phydev, MII_BCM54XX_AUX_CTL, MII_BCM54XX_AUXCTL_SHDWSEL_MASK |
		  regnum << MII_BCM54XX_AUXCTL_SHDWSEL_READ_SHIFT);
	return FUNC0(phydev, MII_BCM54XX_AUX_CTL);
}