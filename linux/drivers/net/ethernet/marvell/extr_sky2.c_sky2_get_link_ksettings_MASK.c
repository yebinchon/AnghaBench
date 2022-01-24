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
typedef  int u32 ;
struct sky2_port {int advertising; int flags; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  port; int /*<<< orphan*/  speed; int /*<<< orphan*/  phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  PORT_TP ; 
 int SKY2_FLAG_AUTO_SPEED ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int SUPPORTED_Autoneg ; 
 int SUPPORTED_FIBRE ; 
 int SUPPORTED_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sky2_hw*) ; 
 int FUNC3 (struct sky2_hw*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				   struct ethtool_link_ksettings *cmd)
{
	struct sky2_port *sky2 = FUNC1(dev);
	struct sky2_hw *hw = sky2->hw;
	u32 supported, advertising;

	supported = FUNC3(hw);
	cmd->base.phy_address = PHY_ADDR_MARV;
	if (FUNC2(hw)) {
		cmd->base.port = PORT_TP;
		cmd->base.speed = sky2->speed;
		supported |=  SUPPORTED_Autoneg | SUPPORTED_TP;
	} else {
		cmd->base.speed = SPEED_1000;
		cmd->base.port = PORT_FIBRE;
		supported |=  SUPPORTED_Autoneg | SUPPORTED_FIBRE;
	}

	advertising = sky2->advertising;
	cmd->base.autoneg = (sky2->flags & SKY2_FLAG_AUTO_SPEED)
		? AUTONEG_ENABLE : AUTONEG_DISABLE;
	cmd->base.duplex = sky2->duplex;

	FUNC0(cmd->link_modes.supported,
						supported);
	FUNC0(cmd->link_modes.advertising,
						advertising);

	return 0;
}