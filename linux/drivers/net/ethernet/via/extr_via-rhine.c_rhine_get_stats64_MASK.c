#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; int /*<<< orphan*/  syncp; } ;
struct TYPE_3__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; int /*<<< orphan*/  syncp; } ;
struct rhine_private {TYPE_2__ tx_stats; TYPE_1__ rx_stats; int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 struct rhine_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link_stats64*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rhine_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC7(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
	struct rhine_private *rp = FUNC0(dev);
	unsigned int start;

	FUNC3(&rp->lock);
	FUNC2(rp);
	FUNC4(&rp->lock);

	FUNC1(stats, &dev->stats);

	do {
		start = FUNC5(&rp->rx_stats.syncp);
		stats->rx_packets = rp->rx_stats.packets;
		stats->rx_bytes = rp->rx_stats.bytes;
	} while (FUNC6(&rp->rx_stats.syncp, start));

	do {
		start = FUNC5(&rp->tx_stats.syncp);
		stats->tx_packets = rp->tx_stats.packets;
		stats->tx_bytes = rp->tx_stats.bytes;
	} while (FUNC6(&rp->tx_stats.syncp, start));
}