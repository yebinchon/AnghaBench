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
struct mlx4_en_rx_ring {struct mlx4_en_rx_alloc* rx_info; } ;
struct mlx4_en_rx_alloc {int dummy; } ;
struct mlx4_en_priv {int log_rx_info; int num_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv const*,struct mlx4_en_rx_alloc*) ; 

__attribute__((used)) static void FUNC2(const struct mlx4_en_priv *priv,
				 struct mlx4_en_rx_ring *ring,
				 int index)
{
	struct mlx4_en_rx_alloc *frags;
	int nr;

	frags = ring->rx_info + (index << priv->log_rx_info);
	for (nr = 0; nr < priv->num_frags; nr++) {
		FUNC0(DRV, priv, "Freeing fragment:%d\n", nr);
		FUNC1(priv, frags + nr);
	}
}