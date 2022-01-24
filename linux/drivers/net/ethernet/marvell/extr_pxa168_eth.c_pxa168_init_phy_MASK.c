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
struct pxa168_eth_private {scalar_t__ phy_speed; int /*<<< orphan*/  phy_duplex; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  phy_intf; int /*<<< orphan*/  smi_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_4__ {scalar_t__ speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  duplex; int /*<<< orphan*/  phy_address; } ;
struct TYPE_3__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_BASIC_FEATURES ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pxa168_eth_private* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  pxa168_eth_adjust_link ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC4(dev);
	struct ethtool_link_ksettings cmd;
	struct phy_device *phy = NULL;
	int err;

	if (dev->phydev)
		return 0;

	phy = FUNC3(pep->smi_bus, pep->phy_addr);
	if (FUNC0(phy))
		return FUNC1(phy);

	err = FUNC5(dev, phy, pxa168_eth_adjust_link,
				 pep->phy_intf);
	if (err)
		return err;

	cmd.base.phy_address = pep->phy_addr;
	cmd.base.speed = pep->phy_speed;
	cmd.base.duplex = pep->phy_duplex;
	FUNC2(cmd.link_modes.advertising, PHY_BASIC_FEATURES,
		    __ETHTOOL_LINK_MODE_MASK_NBITS);
	cmd.base.autoneg = AUTONEG_ENABLE;

	if (cmd.base.speed != 0)
		cmd.base.autoneg = AUTONEG_DISABLE;

	return FUNC6(dev, &cmd);
}