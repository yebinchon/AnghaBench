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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  port; int /*<<< orphan*/  duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int EINVAL ; 
 int /*<<< orphan*/  PORT_OTHER ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				    struct ethtool_link_ksettings *link_ksettings)
{
	u16 ib_link_width_oper;
	u16 ib_proto_oper;
	int speed, ret;

	ret = FUNC1(netdev, &ib_link_width_oper, &ib_proto_oper);
	if (ret)
		return ret;

	FUNC0(link_ksettings, supported);
	FUNC0(link_ksettings, advertising);

	speed = FUNC2(ib_link_width_oper, ib_proto_oper);
	if (speed < 0)
		return -EINVAL;

	link_ksettings->base.duplex = DUPLEX_FULL;
	link_ksettings->base.port = PORT_OTHER;

	link_ksettings->base.autoneg = AUTONEG_DISABLE;

	link_ksettings->base.speed = speed;

	return 0;
}