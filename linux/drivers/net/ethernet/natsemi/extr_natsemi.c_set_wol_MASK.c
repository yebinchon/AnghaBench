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
struct netdev_private {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  sopass; int /*<<< orphan*/  wolopts; } ;

/* Variables and functions */
 struct netdev_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct netdev_private *np = FUNC0(dev);
	int res;
	FUNC3(&np->lock);
	FUNC2(dev, wol->wolopts);
	res = FUNC1(dev, wol->sopass);
	FUNC4(&np->lock);
	return res;
}