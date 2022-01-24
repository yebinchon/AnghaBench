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
struct rtnl_link_stats64 {int /*<<< orphan*/  rx_missed_errors; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_missed_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct gemini_ethernet_port {TYPE_1__ stats; int /*<<< orphan*/  tx_stats_syncp; int /*<<< orphan*/  ir_stats_syncp; int /*<<< orphan*/  rx_stats_syncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct gemini_ethernet_port* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			     struct rtnl_link_stats64 *stats)
{
	struct gemini_ethernet_port *port = FUNC1(netdev);
	unsigned int start;

	FUNC0(netdev);

	/* Racing with RX NAPI */
	do {
		start = FUNC2(&port->rx_stats_syncp);

		stats->rx_packets = port->stats.rx_packets;
		stats->rx_bytes = port->stats.rx_bytes;
		stats->rx_errors = port->stats.rx_errors;
		stats->rx_dropped = port->stats.rx_dropped;

		stats->rx_length_errors = port->stats.rx_length_errors;
		stats->rx_over_errors = port->stats.rx_over_errors;
		stats->rx_crc_errors = port->stats.rx_crc_errors;
		stats->rx_frame_errors = port->stats.rx_frame_errors;

	} while (FUNC3(&port->rx_stats_syncp, start));

	/* Racing with MIB and TX completion interrupts */
	do {
		start = FUNC2(&port->ir_stats_syncp);

		stats->tx_errors = port->stats.tx_errors;
		stats->tx_packets = port->stats.tx_packets;
		stats->tx_bytes = port->stats.tx_bytes;

		stats->multicast = port->stats.multicast;
		stats->rx_missed_errors = port->stats.rx_missed_errors;
		stats->rx_fifo_errors = port->stats.rx_fifo_errors;

	} while (FUNC3(&port->ir_stats_syncp, start));

	/* Racing with hard_start_xmit */
	do {
		start = FUNC2(&port->tx_stats_syncp);

		stats->tx_dropped = port->stats.tx_dropped;

	} while (FUNC3(&port->tx_stats_syncp, start));

	stats->rx_dropped += stats->rx_missed_errors;
}