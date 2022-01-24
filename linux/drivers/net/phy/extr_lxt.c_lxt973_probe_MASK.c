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
struct phy_device {int (* priv ) (struct phy_device*) ;} ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED100 ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_LXT973_PCR ; 
 int PCR_FIBER_SELECT ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int val = FUNC0(phydev, MII_LXT973_PCR);

	if (val & PCR_FIBER_SELECT) {
		/*
		 * If fiber is selected, then the only correct setting
		 * is 100Mbps, full duplex, and auto negotiation off.
		 */
		val = FUNC0(phydev, MII_BMCR);
		val |= (BMCR_SPEED100 | BMCR_FULLDPLX);
		val &= ~BMCR_ANENABLE;
		FUNC1(phydev, MII_BMCR, val);
		/* Remember that the port is in fiber mode. */
		phydev->priv = lxt973_probe;
	} else {
		phydev->priv = NULL;
	}
	return 0;
}