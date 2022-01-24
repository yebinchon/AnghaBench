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
struct mlx4_en_tx_ring {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {void** tx_cq; void** tx_ring; int /*<<< orphan*/ * tx_ring_num; int /*<<< orphan*/  stride; struct mlx4_en_port_profile* prof; int /*<<< orphan*/  dev; int /*<<< orphan*/  port; int /*<<< orphan*/  mdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  rx_ring_num; int /*<<< orphan*/  num_tx_rings_p_up; int /*<<< orphan*/  hwtstamp_config; } ;
struct mlx4_en_port_profile {int /*<<< orphan*/ * tx_ring_num; int /*<<< orphan*/  flags; int /*<<< orphan*/  rx_ring_num; int /*<<< orphan*/  num_tx_rings_p_up; int /*<<< orphan*/  hwtstamp_config; } ;
struct mlx4_en_cq {int dummy; } ;

/* Variables and functions */
 int DS_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_TX_RINGS ; 
 int MLX4_EN_MAX_RX_FRAGS ; 
 int MLX4_EN_NUM_TX_TYPES ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_en_priv *dst,
			     struct mlx4_en_priv *src,
			     struct mlx4_en_port_profile *prof)
{
	int t;

	FUNC2(&dst->hwtstamp_config, &prof->hwtstamp_config,
	       sizeof(dst->hwtstamp_config));
	dst->num_tx_rings_p_up = prof->num_tx_rings_p_up;
	dst->rx_ring_num = prof->rx_ring_num;
	dst->flags = prof->flags;
	dst->mdev = src->mdev;
	dst->port = src->port;
	dst->dev = src->dev;
	dst->prof = prof;
	dst->stride = FUNC3(sizeof(struct mlx4_en_rx_desc) +
					 DS_SIZE * MLX4_EN_MAX_RX_FRAGS);

	for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++) {
		dst->tx_ring_num[t] = prof->tx_ring_num[t];
		if (!dst->tx_ring_num[t])
			continue;

		dst->tx_ring[t] = FUNC0(MAX_TX_RINGS,
					  sizeof(struct mlx4_en_tx_ring *),
					  GFP_KERNEL);
		if (!dst->tx_ring[t])
			goto err_free_tx;

		dst->tx_cq[t] = FUNC0(MAX_TX_RINGS,
					sizeof(struct mlx4_en_cq *),
					GFP_KERNEL);
		if (!dst->tx_cq[t]) {
			FUNC1(dst->tx_ring[t]);
			goto err_free_tx;
		}
	}

	return 0;

err_free_tx:
	while (t--) {
		FUNC1(dst->tx_ring[t]);
		FUNC1(dst->tx_cq[t]);
	}
	return -ENOMEM;
}