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
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct netdevsim {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  syncp; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct netdevsim* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
	struct netdevsim *ns = FUNC0(dev);
	unsigned int start;

	do {
		start = FUNC1(&ns->syncp);
		stats->tx_bytes = ns->tx_bytes;
		stats->tx_packets = ns->tx_packets;
	} while (FUNC2(&ns->syncp, start));
}