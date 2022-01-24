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
struct igb_adapter {int /*<<< orphan*/  stats64_lock; int /*<<< orphan*/  stats64; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link_stats64*,int /*<<< orphan*/ *,int) ; 
 struct igb_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			    struct rtnl_link_stats64 *stats)
{
	struct igb_adapter *adapter = FUNC2(netdev);

	FUNC3(&adapter->stats64_lock);
	FUNC0(adapter);
	FUNC1(stats, &adapter->stats64, sizeof(*stats));
	FUNC4(&adapter->stats64_lock);
}