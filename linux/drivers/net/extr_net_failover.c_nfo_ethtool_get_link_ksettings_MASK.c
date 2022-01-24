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
struct net_failover_info {int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  primary_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  port; int /*<<< orphan*/  duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  PORT_OTHER ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int FUNC0 (struct net_device*,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_failover_info* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
					  struct ethtool_link_ksettings *cmd)
{
	struct net_failover_info *nfo_info = FUNC2(dev);
	struct net_device *slave_dev;

	slave_dev = FUNC3(nfo_info->primary_dev);
	if (!slave_dev || !FUNC1(slave_dev)) {
		slave_dev = FUNC3(nfo_info->standby_dev);
		if (!slave_dev || !FUNC1(slave_dev)) {
			cmd->base.duplex = DUPLEX_UNKNOWN;
			cmd->base.port = PORT_OTHER;
			cmd->base.speed = SPEED_UNKNOWN;

			return 0;
		}
	}

	return FUNC0(slave_dev, cmd);
}