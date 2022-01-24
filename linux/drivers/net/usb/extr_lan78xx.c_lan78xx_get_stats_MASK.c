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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  access_lock; int /*<<< orphan*/  curr_stat; } ;
struct lan78xx_net {TYPE_1__ stats; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct lan78xx_net* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			      struct ethtool_stats *stats, u64 *data)
{
	struct lan78xx_net *dev = FUNC4(netdev);

	FUNC0(dev);

	FUNC2(&dev->stats.access_lock);
	FUNC1(data, &dev->stats.curr_stat, sizeof(dev->stats.curr_stat));
	FUNC3(&dev->stats.access_lock);
}