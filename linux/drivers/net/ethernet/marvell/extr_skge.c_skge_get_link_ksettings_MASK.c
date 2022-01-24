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
typedef  int /*<<< orphan*/  u32 ;
struct skge_port {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  advertising; struct skge_hw* hw; } ;
struct skge_hw {int /*<<< orphan*/  phy_addr; scalar_t__ copper; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  port; int /*<<< orphan*/  phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  PORT_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				   struct ethtool_link_ksettings *cmd)
{
	struct skge_port *skge = FUNC1(dev);
	struct skge_hw *hw = skge->hw;
	u32 supported, advertising;

	supported = FUNC2(hw);

	if (hw->copper) {
		cmd->base.port = PORT_TP;
		cmd->base.phy_address = hw->phy_addr;
	} else
		cmd->base.port = PORT_FIBRE;

	advertising = skge->advertising;
	cmd->base.autoneg = skge->autoneg;
	cmd->base.speed = skge->speed;
	cmd->base.duplex = skge->duplex;

	FUNC0(cmd->link_modes.supported,
						supported);
	FUNC0(cmd->link_modes.advertising,
						advertising);

	return 0;
}