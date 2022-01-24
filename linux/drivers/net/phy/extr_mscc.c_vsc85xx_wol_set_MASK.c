#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u16 ;
struct phy_device {int /*<<< orphan*/  lock; TYPE_1__* attached_dev; } ;
struct ethtool_wolinfo {int wolopts; int* sopass; } ;
struct TYPE_2__ {size_t* dev_addr; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  MII_VSC85XX_INT_MASK ; 
 int MII_VSC85XX_INT_MASK_WOL ; 
 int /*<<< orphan*/  MII_VSC85XX_INT_STATUS ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_EXTENDED_2 ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_LOWER_MAC_ADDR ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_LOWER_PASSWD ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_MAC_CONTROL ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_MID_MAC_ADDR ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_MID_PASSWD ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_UPPER_MAC_ADDR ; 
 int /*<<< orphan*/  MSCC_PHY_WOL_UPPER_PASSWD ; 
 int SECURE_ON_ENABLE ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct phy_device*,int,int) ; 
 int FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct phy_device *phydev,
			   struct ethtool_wolinfo *wol)
{
	int rc;
	u16 reg_val;
	u8  i;
	u16 pwd[3] = {0, 0, 0};
	struct ethtool_wolinfo *wol_conf = wol;
	u8 *mac_addr = phydev->attached_dev->dev_addr;

	FUNC3(&phydev->lock);
	rc = FUNC7(phydev, MSCC_PHY_PAGE_EXTENDED_2);
	if (rc < 0) {
		rc = FUNC6(phydev, rc, rc);
		goto out_unlock;
	}

	if (wol->wolopts & WAKE_MAGIC) {
		/* Store the device address for the magic packet */
		for (i = 0; i < FUNC0(pwd); i++)
			pwd[i] = mac_addr[5 - (i * 2 + 1)] << 8 |
				 mac_addr[5 - i * 2];
		FUNC2(phydev, MSCC_PHY_WOL_LOWER_MAC_ADDR, pwd[0]);
		FUNC2(phydev, MSCC_PHY_WOL_MID_MAC_ADDR, pwd[1]);
		FUNC2(phydev, MSCC_PHY_WOL_UPPER_MAC_ADDR, pwd[2]);
	} else {
		FUNC2(phydev, MSCC_PHY_WOL_LOWER_MAC_ADDR, 0);
		FUNC2(phydev, MSCC_PHY_WOL_MID_MAC_ADDR, 0);
		FUNC2(phydev, MSCC_PHY_WOL_UPPER_MAC_ADDR, 0);
	}

	if (wol_conf->wolopts & WAKE_MAGICSECURE) {
		for (i = 0; i < FUNC0(pwd); i++)
			pwd[i] = wol_conf->sopass[5 - (i * 2 + 1)] << 8 |
				 wol_conf->sopass[5 - i * 2];
		FUNC2(phydev, MSCC_PHY_WOL_LOWER_PASSWD, pwd[0]);
		FUNC2(phydev, MSCC_PHY_WOL_MID_PASSWD, pwd[1]);
		FUNC2(phydev, MSCC_PHY_WOL_UPPER_PASSWD, pwd[2]);
	} else {
		FUNC2(phydev, MSCC_PHY_WOL_LOWER_PASSWD, 0);
		FUNC2(phydev, MSCC_PHY_WOL_MID_PASSWD, 0);
		FUNC2(phydev, MSCC_PHY_WOL_UPPER_PASSWD, 0);
	}

	reg_val = FUNC1(phydev, MSCC_PHY_WOL_MAC_CONTROL);
	if (wol_conf->wolopts & WAKE_MAGICSECURE)
		reg_val |= SECURE_ON_ENABLE;
	else
		reg_val &= ~SECURE_ON_ENABLE;
	FUNC2(phydev, MSCC_PHY_WOL_MAC_CONTROL, reg_val);

	rc = FUNC6(phydev, rc, rc > 0 ? 0 : rc);
	if (rc < 0)
		goto out_unlock;

	if (wol->wolopts & WAKE_MAGIC) {
		/* Enable the WOL interrupt */
		reg_val = FUNC5(phydev, MII_VSC85XX_INT_MASK);
		reg_val |= MII_VSC85XX_INT_MASK_WOL;
		rc = FUNC8(phydev, MII_VSC85XX_INT_MASK, reg_val);
		if (rc)
			goto out_unlock;
	} else {
		/* Disable the WOL interrupt */
		reg_val = FUNC5(phydev, MII_VSC85XX_INT_MASK);
		reg_val &= (~MII_VSC85XX_INT_MASK_WOL);
		rc = FUNC8(phydev, MII_VSC85XX_INT_MASK, reg_val);
		if (rc)
			goto out_unlock;
	}
	/* Clear WOL iterrupt status */
	reg_val = FUNC5(phydev, MII_VSC85XX_INT_STATUS);

out_unlock:
	FUNC4(&phydev->lock);

	return rc;
}