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
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int BMCR_LOOPBACK ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct lan78xx_net* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct phy_device*,struct ethtool_link_ksettings const*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *net,
				      const struct ethtool_link_ksettings *cmd)
{
	struct lan78xx_net *dev = FUNC1(net);
	struct phy_device *phydev = net->phydev;
	int ret = 0;
	int temp;

	ret = FUNC5(dev->intf);
	if (ret < 0)
		return ret;

	/* change speed & duplex */
	ret = FUNC2(phydev, cmd);

	if (!cmd->base.autoneg) {
		/* force link down */
		temp = FUNC3(phydev, MII_BMCR);
		FUNC4(phydev, MII_BMCR, temp | BMCR_LOOPBACK);
		FUNC0(1);
		FUNC4(phydev, MII_BMCR, temp);
	}

	FUNC6(dev->intf);

	return ret;
}