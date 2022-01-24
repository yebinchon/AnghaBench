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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct mlx5e_tx_wqe_info* wqe_info; } ;
struct mlx5e_txqsq {scalar_t__ cc; scalar_t__ pc; scalar_t__ dma_fifo_cc; int /*<<< orphan*/  pdev; TYPE_1__ db; int /*<<< orphan*/  wq; } ;
struct mlx5e_tx_wqe_info {scalar_t__ num_wqebbs; int num_dma; struct sk_buff* skb; } ;
struct mlx5e_sq_dma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct mlx5e_sq_dma* FUNC2 (struct mlx5e_txqsq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_txqsq*,struct mlx5e_tx_wqe_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mlx5e_sq_dma*) ; 

void FUNC5(struct mlx5e_txqsq *sq)
{
	struct mlx5e_tx_wqe_info *wi;
	struct sk_buff *skb;
	u32 dma_fifo_cc;
	u16 sqcc;
	u16 ci;
	int i;

	sqcc = sq->cc;
	dma_fifo_cc = sq->dma_fifo_cc;

	while (sqcc != sq->pc) {
		ci = FUNC1(&sq->wq, sqcc);
		wi = &sq->db.wqe_info[ci];
		skb = wi->skb;

		if (!skb) {
			FUNC3(sq, wi, &dma_fifo_cc);
			sqcc += wi->num_wqebbs;
			continue;
		}

		for (i = 0; i < wi->num_dma; i++) {
			struct mlx5e_sq_dma *dma =
				FUNC2(sq, dma_fifo_cc++);

			FUNC4(sq->pdev, dma);
		}

		FUNC0(skb);
		sqcc += wi->num_wqebbs;
	}

	sq->dma_fifo_cc = dma_fifo_cc;
	sq->cc = sqcc;
}