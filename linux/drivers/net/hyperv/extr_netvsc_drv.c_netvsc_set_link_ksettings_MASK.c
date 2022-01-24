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
typedef  int /*<<< orphan*/  u32 ;
struct net_device_context {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ethtool_link_ksettings const*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				     const struct ethtool_link_ksettings *cmd)
{
	struct net_device_context *ndc = FUNC2(dev);
	u32 speed;

	speed = cmd->base.speed;
	if (!FUNC1(speed) ||
	    !FUNC0(cmd->base.duplex) ||
	    !FUNC3(cmd))
		return -EINVAL;

	ndc->speed = speed;
	ndc->duplex = cmd->base.duplex;

	return 0;
}