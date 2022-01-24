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
struct phy_device {struct smsc_phy_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_LAN83C185_CTRL_STATUS ; 
 int MII_LAN83C185_EDPWRDOWN ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	struct smsc_phy_priv *priv = phydev->priv;

	int rc = FUNC0(phydev, MII_LAN83C185_CTRL_STATUS);

	if (rc < 0)
		return rc;

	if (priv->energy_enable) {
		/* Enable energy detect mode for this SMSC Transceivers */
		rc = FUNC1(phydev, MII_LAN83C185_CTRL_STATUS,
			       rc | MII_LAN83C185_EDPWRDOWN);
		if (rc < 0)
			return rc;
	}

	return FUNC2(phydev);
}