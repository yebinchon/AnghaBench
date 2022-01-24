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
struct mlx4_en_rx_ring {int stride; int buf; int buf_size; int size; scalar_t__ actual_size; scalar_t__ size_mask; scalar_t__ log_stride; int /*<<< orphan*/  cqn; scalar_t__ cons; scalar_t__ prod; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {int num_frags; int rx_ring_num; struct mlx4_en_rx_ring** rx_ring; TYPE_2__** rx_cq; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_4__ {TYPE_1__ mcq; } ;

/* Variables and functions */
 int DS_SIZE ; 
 int STAMP_SHIFT ; 
 int TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_en_rx_ring*) ; 
 int FUNC7 (int) ; 

int FUNC8(struct mlx4_en_priv *priv)
{
	struct mlx4_en_rx_ring *ring;
	int i;
	int ring_ind;
	int err;
	int stride = FUNC7(sizeof(struct mlx4_en_rx_desc) +
					DS_SIZE * priv->num_frags);

	for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++) {
		ring = priv->rx_ring[ring_ind];

		ring->prod = 0;
		ring->cons = 0;
		ring->actual_size = 0;
		ring->cqn = priv->rx_cq[ring_ind]->mcq.cqn;

		ring->stride = stride;
		if (ring->stride <= TXBB_SIZE) {
			/* Stamp first unused send wqe */
			__be32 *ptr = (__be32 *)ring->buf;
			__be32 stamp = FUNC0(1 << STAMP_SHIFT);
			*ptr = stamp;
			/* Move pointer to start of rx section */
			ring->buf += TXBB_SIZE;
		}

		ring->log_stride = FUNC1(ring->stride) - 1;
		ring->buf_size = ring->size * ring->stride;

		FUNC2(ring->buf, 0, ring->buf_size);
		FUNC6(ring);

		/* Initialize all descriptors */
		for (i = 0; i < ring->size; i++)
			FUNC5(priv, ring, i);
	}
	err = FUNC3(priv);
	if (err)
		goto err_buffers;

	for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++) {
		ring = priv->rx_ring[ring_ind];

		ring->size_mask = ring->actual_size - 1;
		FUNC6(ring);
	}

	return 0;

err_buffers:
	for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++)
		FUNC4(priv, priv->rx_ring[ring_ind]);

	ring_ind = priv->rx_ring_num - 1;
	while (ring_ind >= 0) {
		if (priv->rx_ring[ring_ind]->stride <= TXBB_SIZE)
			priv->rx_ring[ring_ind]->buf -= TXBB_SIZE;
		ring_ind--;
	}
	return err;
}