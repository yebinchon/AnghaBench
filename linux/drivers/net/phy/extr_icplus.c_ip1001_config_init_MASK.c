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
struct phy_device {scalar_t__ interface; } ;

/* Variables and functions */
 int IP1001_APS_ON ; 
 int IP1001_RXPHASE_SEL ; 
 int /*<<< orphan*/  IP1001_SPEC_CTRL_STATUS_2 ; 
 int IP1001_TXPHASE_SEL ; 
 int /*<<< orphan*/  IP10XX_SPEC_CTRL_STATUS ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ; 
 int FUNC0 (struct phy_device*) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int c;

	c = FUNC0(phydev);
	if (c < 0)
		return c;

	/* Enable Auto Power Saving mode */
	c = FUNC2(phydev, IP1001_SPEC_CTRL_STATUS_2);
	if (c < 0)
		return c;
	c |= IP1001_APS_ON;
	c = FUNC3(phydev, IP1001_SPEC_CTRL_STATUS_2, c);
	if (c < 0)
		return c;

	if (FUNC1(phydev)) {

		c = FUNC2(phydev, IP10XX_SPEC_CTRL_STATUS);
		if (c < 0)
			return c;

		c &= ~(IP1001_RXPHASE_SEL | IP1001_TXPHASE_SEL);

		if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID)
			c |= (IP1001_RXPHASE_SEL | IP1001_TXPHASE_SEL);
		else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
			c |= IP1001_RXPHASE_SEL;
		else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
			c |= IP1001_TXPHASE_SEL;

		c = FUNC3(phydev, IP10XX_SPEC_CTRL_STATUS, c);
		if (c < 0)
			return c;
	}

	return 0;
}