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
struct net_device {int dummy; } ;
struct bnad {int /*<<< orphan*/  bna_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnad*,struct rtnl_link_stats64*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*,struct rtnl_link_stats64*) ; 
 struct bnad* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev, struct rtnl_link_stats64 *stats)
{
	struct bnad *bnad = FUNC2(netdev);
	unsigned long flags;

	FUNC3(&bnad->bna_lock, flags);

	FUNC1(bnad, stats);
	FUNC0(bnad, stats);

	FUNC4(&bnad->bna_lock, flags);
}