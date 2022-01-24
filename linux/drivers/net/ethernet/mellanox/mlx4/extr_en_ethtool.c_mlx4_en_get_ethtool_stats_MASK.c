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
typedef  unsigned long uint64_t ;
typedef  unsigned long u64 ;
struct net_device {int /*<<< orphan*/  stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  bitmap; } ;
struct mlx4_en_priv {int* tx_ring_num; int rx_ring_num; int /*<<< orphan*/  stats_lock; TYPE_3__** rx_ring; TYPE_2__*** tx_ring; int /*<<< orphan*/  phy_stats; int /*<<< orphan*/  xdp_stats; int /*<<< orphan*/  pkstats; int /*<<< orphan*/  tx_flowstats; int /*<<< orphan*/  tx_priority_flowstats; int /*<<< orphan*/  rx_flowstats; int /*<<< orphan*/  rx_priority_flowstats; int /*<<< orphan*/  pf_stats; int /*<<< orphan*/  port_stats; TYPE_1__ stats_bitmap; } ;
struct ethtool_stats {int dummy; } ;
struct bitmap_iterator {int dummy; } ;
struct TYPE_6__ {unsigned long packets; unsigned long bytes; unsigned long dropped; unsigned long xdp_drop; unsigned long xdp_tx; unsigned long xdp_tx_full; } ;
struct TYPE_5__ {unsigned long packets; unsigned long bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_ALL_STATS ; 
 int NUM_FLOW_PRIORITY_STATS_RX ; 
 int NUM_FLOW_PRIORITY_STATS_TX ; 
 int NUM_FLOW_STATS_RX ; 
 int NUM_FLOW_STATS_TX ; 
 int NUM_MAIN_STATS ; 
 int NUM_PF_STATS ; 
 int NUM_PHY_STATS ; 
 int NUM_PKT_STATS ; 
 int NUM_PORT_STATS ; 
 int NUM_XDP_STATS ; 
 size_t TX ; 
 int /*<<< orphan*/  FUNC0 (struct bitmap_iterator*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap_iterator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bitmap_iterator*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev,
		struct ethtool_stats *stats, uint64_t *data)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	int index = 0;
	int i;
	struct bitmap_iterator it;

	FUNC1(&it, priv->stats_bitmap.bitmap, NUM_ALL_STATS);

	FUNC5(&priv->stats_lock);

	FUNC3(dev);

	for (i = 0; i < NUM_MAIN_STATS; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((unsigned long *)&dev->stats)[i];

	for (i = 0; i < NUM_PORT_STATS; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((unsigned long *)&priv->port_stats)[i];

	for (i = 0; i < NUM_PF_STATS; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] =
				((unsigned long *)&priv->pf_stats)[i];

	for (i = 0; i < NUM_FLOW_PRIORITY_STATS_RX;
	     i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] =
				((u64 *)&priv->rx_priority_flowstats)[i];

	for (i = 0; i < NUM_FLOW_STATS_RX; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((u64 *)&priv->rx_flowstats)[i];

	for (i = 0; i < NUM_FLOW_PRIORITY_STATS_TX;
	     i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] =
				((u64 *)&priv->tx_priority_flowstats)[i];

	for (i = 0; i < NUM_FLOW_STATS_TX; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((u64 *)&priv->tx_flowstats)[i];

	for (i = 0; i < NUM_PKT_STATS; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((unsigned long *)&priv->pkstats)[i];

	for (i = 0; i < NUM_XDP_STATS; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((unsigned long *)&priv->xdp_stats)[i];

	for (i = 0; i < NUM_PHY_STATS; i++, FUNC0(&it))
		if (FUNC2(&it))
			data[index++] = ((unsigned long *)&priv->phy_stats)[i];

	for (i = 0; i < priv->tx_ring_num[TX]; i++) {
		data[index++] = priv->tx_ring[TX][i]->packets;
		data[index++] = priv->tx_ring[TX][i]->bytes;
	}
	for (i = 0; i < priv->rx_ring_num; i++) {
		data[index++] = priv->rx_ring[i]->packets;
		data[index++] = priv->rx_ring[i]->bytes;
		data[index++] = priv->rx_ring[i]->dropped;
		data[index++] = priv->rx_ring[i]->xdp_drop;
		data[index++] = priv->rx_ring[i]->xdp_tx;
		data[index++] = priv->rx_ring[i]->xdp_tx_full;
	}
	FUNC6(&priv->stats_lock);

}