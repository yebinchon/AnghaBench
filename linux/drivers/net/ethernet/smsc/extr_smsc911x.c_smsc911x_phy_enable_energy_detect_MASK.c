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
struct smsc911x_data {struct net_device* dev; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_LAN83C185_CTRL_STATUS ; 
 int MII_LAN83C185_EDPWRDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct smsc911x_data *pdata)
{
	struct net_device *ndev = pdata->dev;
	struct phy_device *phy_dev = ndev->phydev;
	int rc = 0;

	if (!phy_dev)
		return rc;

	rc = FUNC1(phy_dev, MII_LAN83C185_CTRL_STATUS);

	if (rc < 0) {
		FUNC0(pdata, drv, "Failed reading PHY control reg");
		return rc;
	}

	/* Only enable if energy detect mode is already disabled */
	if (!(rc & MII_LAN83C185_EDPWRDOWN)) {
		/* Enable energy detect mode for this SMSC Transceivers */
		rc = FUNC2(phy_dev, MII_LAN83C185_CTRL_STATUS,
			       rc | MII_LAN83C185_EDPWRDOWN);

		if (rc < 0) {
			FUNC0(pdata, drv, "Failed writing PHY control reg");
			return rc;
		}
	}
	return 0;
}