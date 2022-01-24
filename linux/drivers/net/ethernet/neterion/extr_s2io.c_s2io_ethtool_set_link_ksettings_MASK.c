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
struct s2io_nic {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
 scalar_t__ SPEED_10000 ; 
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev,
				const struct ethtool_link_ksettings *cmd)
{
	struct s2io_nic *sp = FUNC0(dev);
	if ((cmd->base.autoneg == AUTONEG_ENABLE) ||
	    (cmd->base.speed != SPEED_10000) ||
	    (cmd->base.duplex != DUPLEX_FULL))
		return -EINVAL;
	else {
		FUNC1(sp->dev);
		FUNC2(sp->dev);
	}

	return 0;
}