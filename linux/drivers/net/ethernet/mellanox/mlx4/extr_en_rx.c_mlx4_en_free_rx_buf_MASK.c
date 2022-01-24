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
struct mlx4_en_rx_ring {int size; scalar_t__ prod; scalar_t__ cons; } ;
struct mlx4_en_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int) ; 

__attribute__((used)) static void FUNC2(struct mlx4_en_priv *priv,
				struct mlx4_en_rx_ring *ring)
{
	int index;

	FUNC0(DRV, priv, "Freeing Rx buf - cons:%d prod:%d\n",
	       ring->cons, ring->prod);

	/* Unmap and free Rx buffers */
	for (index = 0; index < ring->size; index++) {
		FUNC0(DRV, priv, "Processing descriptor:%d\n", index);
		FUNC1(priv, ring, index);
	}
	ring->cons = 0;
	ring->prod = 0;
}