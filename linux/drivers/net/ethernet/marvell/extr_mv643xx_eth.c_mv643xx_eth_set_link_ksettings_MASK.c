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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct TYPE_2__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED_1000baseT_Half ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ethtool_link_ksettings*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev,
			       const struct ethtool_link_ksettings *cmd)
{
	struct ethtool_link_ksettings c = *cmd;
	u32 advertising;
	int ret;

	if (!dev->phydev)
		return -EINVAL;

	/*
	 * The MAC does not support 1000baseT_Half.
	 */
	FUNC1(&advertising,
						c.link_modes.advertising);
	advertising &= ~ADVERTISED_1000baseT_Half;
	FUNC0(c.link_modes.advertising,
						advertising);

	ret = FUNC3(dev->phydev, &c);
	if (!ret)
		FUNC2(dev);
	return ret;
}