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
struct TYPE_3__ {int index; TYPE_2__* buf; } ;
struct mlx4_en_rx_ring {scalar_t__ stride; int /*<<< orphan*/  buf; TYPE_1__ page_cache; } ;
struct mlx4_en_priv {int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  ddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  page; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mlx4_en_priv *priv,
				struct mlx4_en_rx_ring *ring)
{
	int i;

	for (i = 0; i < ring->page_cache.index; i++) {
		FUNC0(priv->ddev, ring->page_cache.buf[i].dma,
			       PAGE_SIZE, priv->dma_dir);
		FUNC2(ring->page_cache.buf[i].page);
	}
	ring->page_cache.index = 0;
	FUNC1(priv, ring);
	if (ring->stride <= TXBB_SIZE)
		ring->buf -= TXBB_SIZE;
}