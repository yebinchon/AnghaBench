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
struct TYPE_2__ {unsigned long rx_packets; unsigned long rx_bytes; unsigned long tx_packets; unsigned long tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct mlx4_en_tx_ring {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct mlx4_en_rx_ring {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct mlx4_en_priv {int rx_ring_num; int* tx_ring_num; struct mlx4_en_tx_ring*** tx_ring; struct mlx4_en_rx_ring** rx_ring; int /*<<< orphan*/  port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC2(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	unsigned long packets, bytes;
	int i;

	if (!priv->port_up || FUNC1(mdev->dev))
		return;

	packets = 0;
	bytes = 0;
	for (i = 0; i < priv->rx_ring_num; i++) {
		const struct mlx4_en_rx_ring *ring = priv->rx_ring[i];

		packets += FUNC0(ring->packets);
		bytes   += FUNC0(ring->bytes);
	}
	dev->stats.rx_packets = packets;
	dev->stats.rx_bytes = bytes;

	packets = 0;
	bytes = 0;
	for (i = 0; i < priv->tx_ring_num[TX]; i++) {
		const struct mlx4_en_tx_ring *ring = priv->tx_ring[TX][i];

		packets += FUNC0(ring->packets);
		bytes   += FUNC0(ring->bytes);
	}
	dev->stats.tx_packets = packets;
	dev->stats.tx_bytes = bytes;
}