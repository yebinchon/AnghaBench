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
typedef  int u8 ;
struct mlx5e_txqsq {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dma_fifo_pc; } ;
struct mlx5e_sq_dma {int dummy; } ;

/* Variables and functions */
 struct mlx5e_sq_dma* FUNC0 (struct mlx5e_txqsq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx5e_sq_dma*) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_txqsq *sq, u8 num_dma)
{
	int i;

	for (i = 0; i < num_dma; i++) {
		struct mlx5e_sq_dma *last_pushed_dma =
			FUNC0(sq, --sq->dma_fifo_pc);

		FUNC1(sq->pdev, last_pushed_dma);
	}
}