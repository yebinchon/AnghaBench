#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  phy_interface; } ;
struct smsc911x_data {int last_duplex; int last_carrier; TYPE_2__ config; int /*<<< orphan*/  mii_bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct phy_device {int /*<<< orphan*/  phy_id; TYPE_1__ mdio; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct smsc911x_data* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct net_device*,struct phy_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 
 struct phy_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  smsc911x_phy_adjust_link ; 
 scalar_t__ FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC3(dev);
	struct phy_device *phydev = NULL;
	int ret;

	/* find the first phy */
	phydev = FUNC7(pdata->mii_bus);
	if (!phydev) {
		FUNC2(dev, "no PHY found\n");
		return -ENODEV;
	}

	FUNC0(pdata, probe, "PHY: addr %d, phy_id 0x%08X",
		   phydev->mdio.addr, phydev->phy_id);

	ret = FUNC5(dev, phydev, &smsc911x_phy_adjust_link,
				 pdata->config.phy_interface);

	if (ret) {
		FUNC2(dev, "Could not attach to PHY\n");
		return ret;
	}

	FUNC4(phydev);

	FUNC8(phydev, SPEED_100);

	/* mask with MAC supported features */
	FUNC9(phydev);

	pdata->last_duplex = -1;
	pdata->last_carrier = -1;

#ifdef USE_PHY_WORK_AROUND
	if (smsc911x_phy_loopbacktest(dev) < 0) {
		SMSC_WARN(pdata, hw, "Failed Loop Back Test");
		phy_disconnect(phydev);
		return -ENODEV;
	}
	SMSC_TRACE(pdata, hw, "Passed Loop Back Test");
#endif				/* USE_PHY_WORK_AROUND */

	FUNC0(pdata, hw, "phy initialised successfully");
	return 0;
}