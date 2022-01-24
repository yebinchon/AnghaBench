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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct gem {int /*<<< orphan*/  link_timer; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct TYPE_3__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*,struct ethtool_link_ksettings const*) ; 
 struct gem* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				  const struct ethtool_link_ksettings *cmd)
{
	struct gem *gp = FUNC3(dev);
	u32 speed = cmd->base.speed;
	u32 advertising;

	FUNC1(&advertising,
						cmd->link_modes.advertising);

	/* Verify the settings we care about. */
	if (cmd->base.autoneg != AUTONEG_ENABLE &&
	    cmd->base.autoneg != AUTONEG_DISABLE)
		return -EINVAL;

	if (cmd->base.autoneg == AUTONEG_ENABLE &&
	    advertising == 0)
		return -EINVAL;

	if (cmd->base.autoneg == AUTONEG_DISABLE &&
	    ((speed != SPEED_1000 &&
	      speed != SPEED_100 &&
	      speed != SPEED_10) ||
	     (cmd->base.duplex != DUPLEX_HALF &&
	      cmd->base.duplex != DUPLEX_FULL)))
		return -EINVAL;

	/* Apply settings and restart link process. */
	if (FUNC4(gp->dev)) {
		FUNC0(&gp->link_timer);
		FUNC2(gp, cmd);
	}

	return 0;
}