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
struct ethtool_eee {int advertised; int eee_enabled; int lp_advertised; int eee_active; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MDIO_AN_EEE_ADV ; 
 int /*<<< orphan*/  MDIO_AN_EEE_LPABLE ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_PCS_EEE_ABLE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct phy_device *phydev, struct ethtool_eee *data)
{
	int val;

	if (!phydev->drv)
		return -EIO;

	/* Get Supported EEE */
	val = FUNC2(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
	if (val < 0)
		return val;
	data->supported = FUNC1(val);

	/* Get advertisement EEE */
	val = FUNC2(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
	if (val < 0)
		return val;
	data->advertised = FUNC0(val);
	data->eee_enabled = !!data->advertised;

	/* Get LP advertisement EEE */
	val = FUNC2(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
	if (val < 0)
		return val;
	data->lp_advertised = FUNC0(val);

	data->eee_active = !!(data->advertised & data->lp_advertised);

	return 0;
}