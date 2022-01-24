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
typedef  scalar_t__ u64 ;
struct rtnl_link_stats64 {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; scalar_t__ multicast; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ packets; scalar_t__ bytes; } ;
struct ixgbevf_ring {TYPE_2__ stats; int /*<<< orphan*/  syncp; } ;
struct TYPE_3__ {scalar_t__ base_vfmprc; scalar_t__ vfmprc; } ;
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int num_xdp_queues; struct ixgbevf_ring** xdp_ring; struct ixgbevf_ring** tx_ring; struct ixgbevf_ring** rx_ring; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtnl_link_stats64*,struct ixgbevf_ring const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev,
			      struct rtnl_link_stats64 *stats)
{
	struct ixgbevf_adapter *adapter = FUNC2(netdev);
	unsigned int start;
	u64 bytes, packets;
	const struct ixgbevf_ring *ring;
	int i;

	FUNC1(adapter);

	stats->multicast = adapter->stats.vfmprc - adapter->stats.base_vfmprc;

	FUNC3();
	for (i = 0; i < adapter->num_rx_queues; i++) {
		ring = adapter->rx_ring[i];
		do {
			start = FUNC5(&ring->syncp);
			bytes = ring->stats.bytes;
			packets = ring->stats.packets;
		} while (FUNC6(&ring->syncp, start));
		stats->rx_bytes += bytes;
		stats->rx_packets += packets;
	}

	for (i = 0; i < adapter->num_tx_queues; i++) {
		ring = adapter->tx_ring[i];
		FUNC0(stats, ring);
	}

	for (i = 0; i < adapter->num_xdp_queues; i++) {
		ring = adapter->xdp_ring[i];
		FUNC0(stats, ring);
	}
	FUNC4();
}