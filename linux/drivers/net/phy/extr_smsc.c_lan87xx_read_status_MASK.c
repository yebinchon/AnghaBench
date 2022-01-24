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
struct smsc_phy_priv {scalar_t__ energy_enable; } ;
struct phy_device {int /*<<< orphan*/  link; struct smsc_phy_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_LAN83C185_CTRL_STATUS ; 
 int MII_LAN83C185_EDPWRDOWN ; 
 int MII_LAN83C185_ENERGYON ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	struct smsc_phy_priv *priv = phydev->priv;

	int err = FUNC0(phydev);

	if (!phydev->link && priv->energy_enable) {
		int i;

		/* Disable EDPD to wake up PHY */
		int rc = FUNC2(phydev, MII_LAN83C185_CTRL_STATUS);
		if (rc < 0)
			return rc;

		rc = FUNC3(phydev, MII_LAN83C185_CTRL_STATUS,
			       rc & ~MII_LAN83C185_EDPWRDOWN);
		if (rc < 0)
			return rc;

		/* Wait max 640 ms to detect energy */
		for (i = 0; i < 64; i++) {
			/* Sleep to allow link test pulses to be sent */
			FUNC1(10);
			rc = FUNC2(phydev, MII_LAN83C185_CTRL_STATUS);
			if (rc < 0)
				return rc;
			if (rc & MII_LAN83C185_ENERGYON)
				break;
		}

		/* Re-enable EDPD */
		rc = FUNC2(phydev, MII_LAN83C185_CTRL_STATUS);
		if (rc < 0)
			return rc;

		rc = FUNC3(phydev, MII_LAN83C185_CTRL_STATUS,
			       rc | MII_LAN83C185_EDPWRDOWN);
		if (rc < 0)
			return rc;
	}

	return err;
}