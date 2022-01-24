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
struct niu_link_config {scalar_t__ active_speed; scalar_t__ active_duplex; } ;
struct niu {int /*<<< orphan*/  lock; struct net_device* dev; struct niu_link_config link_config; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_10000 ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int /*<<< orphan*/ ,struct net_device*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct niu *np, int link_up)
{
	struct niu_link_config *lp = &np->link_config;
	struct net_device *dev = np->dev;
	unsigned long flags;

	if (!FUNC1(dev) && link_up) {
		FUNC3(np, link, dev, "Link is up at %s, %s duplex\n",
			   lp->active_speed == SPEED_10000 ? "10Gb/sec" :
			   lp->active_speed == SPEED_1000 ? "1Gb/sec" :
			   lp->active_speed == SPEED_100 ? "100Mbit/sec" :
			   "10Mbit/sec",
			   lp->active_duplex == DUPLEX_FULL ? "full" : "half");

		FUNC7(&np->lock, flags);
		FUNC6(np);
		FUNC5(np, 1);
		FUNC8(&np->lock, flags);

		FUNC2(dev);
	} else if (FUNC1(dev) && !link_up) {
		FUNC4(np, link, dev, "Link is down\n");
		FUNC7(&np->lock, flags);
		FUNC5(np, 0);
		FUNC8(&np->lock, flags);
		FUNC0(dev);
	}

	return 0;
}