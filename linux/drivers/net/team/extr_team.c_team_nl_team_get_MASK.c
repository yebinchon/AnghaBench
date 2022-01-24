#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct team {int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 size_t TEAM_ATTR_TEAM_IFINDEX ; 
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct team* FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  team_netdev_ops ; 

__attribute__((used)) static struct team *FUNC6(struct genl_info *info)
{
	struct net *net = FUNC2(info);
	int ifindex;
	struct net_device *dev;
	struct team *team;

	if (!info->attrs[TEAM_ATTR_TEAM_IFINDEX])
		return NULL;

	ifindex = FUNC5(info->attrs[TEAM_ATTR_TEAM_IFINDEX]);
	dev = FUNC0(net, ifindex);
	if (!dev || dev->netdev_ops != &team_netdev_ops) {
		if (dev)
			FUNC1(dev);
		return NULL;
	}

	team = FUNC4(dev);
	FUNC3(&team->lock);
	return team;
}