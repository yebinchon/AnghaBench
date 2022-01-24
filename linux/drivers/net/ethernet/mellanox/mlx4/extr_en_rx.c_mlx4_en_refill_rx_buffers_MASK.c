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
typedef  int u32 ;
struct mlx4_en_rx_ring {int actual_size; int prod; int cons; int size_mask; } ;
struct mlx4_en_priv {int dummy; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int __GFP_MEMALLOC ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_rx_ring*) ; 

__attribute__((used)) static void FUNC3(struct mlx4_en_priv *priv,
				      struct mlx4_en_rx_ring *ring)
{
	u32 missing = ring->actual_size - (ring->prod - ring->cons);

	/* Try to batch allocations, but not too much. */
	if (missing < 8)
		return;
	do {
		if (FUNC1(priv, ring,
					    ring->prod & ring->size_mask,
					    GFP_ATOMIC | __GFP_MEMALLOC))
			break;
		ring->prod++;
	} while (FUNC0(--missing));

	FUNC2(ring);
}