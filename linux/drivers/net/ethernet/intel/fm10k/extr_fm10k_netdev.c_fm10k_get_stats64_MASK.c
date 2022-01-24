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
struct rtnl_link_stats64 {int /*<<< orphan*/  rx_missed_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct fm10k_ring {TYPE_1__ stats; int /*<<< orphan*/  syncp; } ;
struct fm10k_intfc {unsigned int num_rx_queues; unsigned int num_tx_queues; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * rx_ring; } ;

/* Variables and functions */
 struct fm10k_ring* FUNC0 (int /*<<< orphan*/ ) ; 
 struct fm10k_intfc* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev,
			      struct rtnl_link_stats64 *stats)
{
	struct fm10k_intfc *interface = FUNC1(netdev);
	struct fm10k_ring *ring;
	unsigned int start, i;
	u64 bytes, packets;

	FUNC2();

	for (i = 0; i < interface->num_rx_queues; i++) {
		ring = FUNC0(interface->rx_ring[i]);

		if (!ring)
			continue;

		do {
			start = FUNC4(&ring->syncp);
			packets = ring->stats.packets;
			bytes   = ring->stats.bytes;
		} while (FUNC5(&ring->syncp, start));

		stats->rx_packets += packets;
		stats->rx_bytes   += bytes;
	}

	for (i = 0; i < interface->num_tx_queues; i++) {
		ring = FUNC0(interface->tx_ring[i]);

		if (!ring)
			continue;

		do {
			start = FUNC4(&ring->syncp);
			packets = ring->stats.packets;
			bytes   = ring->stats.bytes;
		} while (FUNC5(&ring->syncp, start));

		stats->tx_packets += packets;
		stats->tx_bytes   += bytes;
	}

	FUNC3();

	/* following stats updated by fm10k_service_task() */
	stats->rx_missed_errors	= netdev->stats.rx_missed_errors;
}