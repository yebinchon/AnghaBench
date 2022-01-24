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
struct nfp_repr_pcpu_stats {unsigned int rx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_packets; } ;
struct nfp_repr {int /*<<< orphan*/  stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 struct nfp_repr_pcpu_stats* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *netdev, unsigned int len)
{
	struct nfp_repr *repr = FUNC0(netdev);
	struct nfp_repr_pcpu_stats *stats;

	stats = FUNC1(repr->stats);
	FUNC2(&stats->syncp);
	stats->rx_packets++;
	stats->rx_bytes += len;
	FUNC3(&stats->syncp);
}