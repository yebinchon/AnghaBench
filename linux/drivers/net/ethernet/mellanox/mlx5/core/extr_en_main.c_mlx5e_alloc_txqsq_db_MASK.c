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
struct TYPE_2__ {void* wqe_info; void* dma_fifo; } ;
struct mlx5e_txqsq {int dma_fifo_mask; TYPE_1__ db; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_SEND_WQEBB_NUM_DS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_txqsq*) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_txqsq *sq, int numa)
{
	int wq_sz = FUNC2(&sq->wq);
	int df_sz = wq_sz * MLX5_SEND_WQEBB_NUM_DS;

	sq->db.dma_fifo = FUNC1(FUNC0(df_sz,
						   sizeof(*sq->db.dma_fifo)),
					GFP_KERNEL, numa);
	sq->db.wqe_info = FUNC1(FUNC0(wq_sz,
						   sizeof(*sq->db.wqe_info)),
					GFP_KERNEL, numa);
	if (!sq->db.dma_fifo || !sq->db.wqe_info) {
		FUNC3(sq);
		return -ENOMEM;
	}

	sq->dma_fifo_mask = df_sz - 1;

	return 0;
}