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
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct el3_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct ethtool_link_ksettings const*) ; 
 struct el3_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				  const struct ethtool_link_ksettings *cmd)
{
	struct el3_private *lp = FUNC1(dev);
	int ret;

	FUNC2(&lp->lock);
	ret = FUNC0(dev, cmd);
	FUNC3(&lp->lock);
	return ret;
}