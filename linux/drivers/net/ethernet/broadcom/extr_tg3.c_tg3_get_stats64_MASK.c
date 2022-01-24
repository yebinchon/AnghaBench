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
struct rtnl_link_stats64 {int dummy; } ;
struct tg3 {int /*<<< orphan*/  lock; struct rtnl_link_stats64 net_stats_prev; int /*<<< orphan*/  hw_stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_COMPLETE ; 
 struct tg3* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,struct rtnl_link_stats64*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
			    struct rtnl_link_stats64 *stats)
{
	struct tg3 *tp = FUNC0(dev);

	FUNC1(&tp->lock);
	if (!tp->hw_stats || !FUNC3(tp, INIT_COMPLETE)) {
		*stats = tp->net_stats_prev;
		FUNC2(&tp->lock);
		return;
	}

	FUNC4(tp, stats);
	FUNC2(&tp->lock);
}