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
typedef  scalar_t__ u64 ;
struct rtnl_link_stats64 {int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {int num_queue_pairs; int /*<<< orphan*/ * tx_rings; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct i40e_ring {TYPE_1__ stats; int /*<<< orphan*/  syncp; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 struct i40e_ring* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 scalar_t__ FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_ring*,struct rtnl_link_stats64*) ; 
 struct rtnl_link_stats64* FUNC3 (struct i40e_vsi*) ; 
 struct i40e_netdev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct net_device *netdev,
				  struct rtnl_link_stats64 *stats)
{
	struct i40e_netdev_priv *np = FUNC4(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct rtnl_link_stats64 *vsi_stats = FUNC3(vsi);
	struct i40e_ring *ring;
	int i;

	if (FUNC7(__I40E_VSI_DOWN, vsi->state))
		return;

	if (!vsi->tx_rings)
		return;

	FUNC5();
	for (i = 0; i < vsi->num_queue_pairs; i++) {
		u64 bytes, packets;
		unsigned int start;

		ring = FUNC0(vsi->tx_rings[i]);
		if (!ring)
			continue;
		FUNC2(ring, stats);

		if (FUNC1(vsi)) {
			ring++;
			FUNC2(ring, stats);
		}

		ring++;
		do {
			start   = FUNC8(&ring->syncp);
			packets = ring->stats.packets;
			bytes   = ring->stats.bytes;
		} while (FUNC9(&ring->syncp, start));

		stats->rx_packets += packets;
		stats->rx_bytes   += bytes;

	}
	FUNC6();

	/* following stats updated by i40e_watchdog_subtask() */
	stats->multicast	= vsi_stats->multicast;
	stats->tx_errors	= vsi_stats->tx_errors;
	stats->tx_dropped	= vsi_stats->tx_dropped;
	stats->rx_errors	= vsi_stats->rx_errors;
	stats->rx_dropped	= vsi_stats->rx_dropped;
	stats->rx_crc_errors	= vsi_stats->rx_crc_errors;
	stats->rx_length_errors	= vsi_stats->rx_length_errors;
}