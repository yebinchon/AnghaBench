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
struct skge_port {int duplex; int speed; scalar_t__ autoneg; int advertising; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ autoneg; int speed; int duplex; } ;
struct TYPE_3__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int DUPLEX_FULL ; 
 int DUPLEX_HALF ; 
 int EINVAL ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_1000baseT_Half ; 
 int SUPPORTED_100baseT_Full ; 
 int SUPPORTED_100baseT_Half ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 struct skge_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct skge_hw const*) ; 
 int FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				   const struct ethtool_link_ksettings *cmd)
{
	struct skge_port *skge = FUNC2(dev);
	const struct skge_hw *hw = skge->hw;
	u32 supported = FUNC5(hw);
	int err = 0;
	u32 advertising;

	FUNC1(&advertising,
						cmd->link_modes.advertising);

	if (cmd->base.autoneg == AUTONEG_ENABLE) {
		advertising = supported;
		skge->duplex = -1;
		skge->speed = -1;
	} else {
		u32 setting;
		u32 speed = cmd->base.speed;

		switch (speed) {
		case SPEED_1000:
			if (cmd->base.duplex == DUPLEX_FULL)
				setting = SUPPORTED_1000baseT_Full;
			else if (cmd->base.duplex == DUPLEX_HALF)
				setting = SUPPORTED_1000baseT_Half;
			else
				return -EINVAL;
			break;
		case SPEED_100:
			if (cmd->base.duplex == DUPLEX_FULL)
				setting = SUPPORTED_100baseT_Full;
			else if (cmd->base.duplex == DUPLEX_HALF)
				setting = SUPPORTED_100baseT_Half;
			else
				return -EINVAL;
			break;

		case SPEED_10:
			if (cmd->base.duplex == DUPLEX_FULL)
				setting = SUPPORTED_10baseT_Full;
			else if (cmd->base.duplex == DUPLEX_HALF)
				setting = SUPPORTED_10baseT_Half;
			else
				return -EINVAL;
			break;
		default:
			return -EINVAL;
		}

		if ((setting & supported) == 0)
			return -EINVAL;

		skge->speed = speed;
		skge->duplex = cmd->base.duplex;
	}

	skge->autoneg = cmd->base.autoneg;
	skge->advertising = advertising;

	if (FUNC3(dev)) {
		FUNC4(dev);
		err = FUNC6(dev);
		if (err) {
			FUNC0(dev);
			return err;
		}
	}

	return 0;
}