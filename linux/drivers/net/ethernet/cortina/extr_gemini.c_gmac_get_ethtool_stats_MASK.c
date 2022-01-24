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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {int /*<<< orphan*/  tx_hw_csummed; int /*<<< orphan*/  tx_frags_linearized; scalar_t__* tx_frag_stats; int /*<<< orphan*/  tx_stats_syncp; int /*<<< orphan*/  rx_napi_exits; int /*<<< orphan*/ * rx_csum_stats; int /*<<< orphan*/ * rx_stats; int /*<<< orphan*/  rx_stats_syncp; int /*<<< orphan*/ * hw_stats; int /*<<< orphan*/  ir_stats_syncp; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int RX_CHKSUM_NUM ; 
 int RX_STATS_NUM ; 
 int RX_STATUS_NUM ; 
 int TX_MAX_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct gemini_ethernet_port* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
				   struct ethtool_stats *estats, u64 *values)
{
	struct gemini_ethernet_port *port = FUNC1(netdev);
	unsigned int start;
	u64 *p;
	int i;

	FUNC0(netdev);

	/* Racing with MIB interrupt */
	do {
		p = values;
		start = FUNC2(&port->ir_stats_syncp);

		for (i = 0; i < RX_STATS_NUM; i++)
			*p++ = port->hw_stats[i];

	} while (FUNC3(&port->ir_stats_syncp, start));
	values = p;

	/* Racing with RX NAPI */
	do {
		p = values;
		start = FUNC2(&port->rx_stats_syncp);

		for (i = 0; i < RX_STATUS_NUM; i++)
			*p++ = port->rx_stats[i];
		for (i = 0; i < RX_CHKSUM_NUM; i++)
			*p++ = port->rx_csum_stats[i];
		*p++ = port->rx_napi_exits;

	} while (FUNC3(&port->rx_stats_syncp, start));
	values = p;

	/* Racing with TX start_xmit */
	do {
		p = values;
		start = FUNC2(&port->tx_stats_syncp);

		for (i = 0; i < TX_MAX_FRAGS; i++) {
			*values++ = port->tx_frag_stats[i];
			port->tx_frag_stats[i] = 0;
		}
		*values++ = port->tx_frags_linearized;
		*values++ = port->tx_hw_csummed;

	} while (FUNC3(&port->tx_stats_syncp, start));
}