#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct vxgedev {int no_of_vpath; TYPE_3__* vpaths; } ;
struct vxge_ring_stats {scalar_t__ rx_dropped; scalar_t__ rx_errors; scalar_t__ rx_bytes; scalar_t__ rx_mcast; scalar_t__ rx_frms; int /*<<< orphan*/  syncp; } ;
struct vxge_fifo_stats {scalar_t__ tx_errors; scalar_t__ tx_bytes; scalar_t__ tx_frms; int /*<<< orphan*/  syncp; } ;
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct vxge_fifo_stats stats; } ;
struct TYPE_4__ {struct vxge_ring_stats stats; } ;
struct TYPE_6__ {TYPE_2__ fifo; TYPE_1__ ring; } ;

/* Variables and functions */
 struct vxgedev* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct rtnl_link_stats64 *net_stats)
{
	struct vxgedev *vdev = FUNC0(dev);
	int k;

	/* net_stats already zeroed by caller */
	for (k = 0; k < vdev->no_of_vpath; k++) {
		struct vxge_ring_stats *rxstats = &vdev->vpaths[k].ring.stats;
		struct vxge_fifo_stats *txstats = &vdev->vpaths[k].fifo.stats;
		unsigned int start;
		u64 packets, bytes, multicast;

		do {
			start = FUNC1(&rxstats->syncp);

			packets   = rxstats->rx_frms;
			multicast = rxstats->rx_mcast;
			bytes     = rxstats->rx_bytes;
		} while (FUNC2(&rxstats->syncp, start));

		net_stats->rx_packets += packets;
		net_stats->rx_bytes += bytes;
		net_stats->multicast += multicast;

		net_stats->rx_errors += rxstats->rx_errors;
		net_stats->rx_dropped += rxstats->rx_dropped;

		do {
			start = FUNC1(&txstats->syncp);

			packets = txstats->tx_frms;
			bytes   = txstats->tx_bytes;
		} while (FUNC2(&txstats->syncp, start));

		net_stats->tx_packets += packets;
		net_stats->tx_bytes += bytes;
		net_stats->tx_errors += txstats->tx_errors;
	}
}