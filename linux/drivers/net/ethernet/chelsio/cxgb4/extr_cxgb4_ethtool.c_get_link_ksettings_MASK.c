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
struct TYPE_4__ {int pcaps; int lpacaps; scalar_t__ autoneg; int /*<<< orphan*/  speed; } ;
struct port_info {scalar_t__ port_type; scalar_t__ mdio_addr; TYPE_2__ link_cfg; int /*<<< orphan*/  lport; int /*<<< orphan*/  adapter; int /*<<< orphan*/  mod_type; } ;
struct net_device {int dummy; } ;
struct ethtool_link_settings {int phy_address; scalar_t__ autoneg; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; scalar_t__ mdio_support; int /*<<< orphan*/  port; } ;
struct TYPE_3__ {int /*<<< orphan*/  lp_advertising; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; struct ethtool_link_settings base; } ;

/* Variables and functions */
 int /*<<< orphan*/  Autoneg ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 scalar_t__ ETH_MDIO_SUPPORTS_C22 ; 
 scalar_t__ ETH_MDIO_SUPPORTS_C45 ; 
 int FW_PORT_CAP32_ANEG ; 
 scalar_t__ FW_PORT_TYPE_BT_SGMII ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp_advertising ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  supported ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct port_info*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
			      struct ethtool_link_ksettings *link_ksettings)
{
	struct port_info *pi = FUNC4(dev);
	struct ethtool_link_settings *base = &link_ksettings->base;

	/* For the nonce, the Firmware doesn't send up Port State changes
	 * when the Virtual Interface attached to the Port is down.  So
	 * if it's down, let's grab any changes.
	 */
	if (!FUNC6(dev))
		(void)FUNC8(pi);

	FUNC1(link_ksettings, supported);
	FUNC1(link_ksettings, advertising);
	FUNC1(link_ksettings, lp_advertising);

	base->port = FUNC2(pi->port_type, pi->mod_type);

	if (pi->mdio_addr >= 0) {
		base->phy_address = pi->mdio_addr;
		base->mdio_support = (pi->port_type == FW_PORT_TYPE_BT_SGMII
				      ? ETH_MDIO_SUPPORTS_C22
				      : ETH_MDIO_SUPPORTS_C45);
	} else {
		base->phy_address = 255;
		base->mdio_support = 0;
	}

	FUNC3(pi->port_type, pi->link_cfg.pcaps,
		       link_ksettings->link_modes.supported);
	FUNC3(pi->port_type,
		       FUNC7(pi->adapter,
				     pi->lport,
				     &pi->link_cfg),
		       link_ksettings->link_modes.advertising);
	FUNC3(pi->port_type, pi->link_cfg.lpacaps,
		       link_ksettings->link_modes.lp_advertising);

	base->speed = (FUNC5(dev)
		       ? pi->link_cfg.speed
		       : SPEED_UNKNOWN);
	base->duplex = DUPLEX_FULL;

	base->autoneg = pi->link_cfg.autoneg;
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_ANEG)
		FUNC0(link_ksettings,
						     supported, Autoneg);
	if (pi->link_cfg.autoneg)
		FUNC0(link_ksettings,
						     advertising, Autoneg);

	return 0;
}