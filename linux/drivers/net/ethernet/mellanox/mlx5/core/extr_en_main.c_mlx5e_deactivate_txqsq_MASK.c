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
typedef  size_t u16 ;
struct TYPE_2__ {struct mlx5e_tx_wqe_info* wqe_info; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int /*<<< orphan*/  uar_map; int /*<<< orphan*/  pc; int /*<<< orphan*/  sqn; TYPE_1__ db; int /*<<< orphan*/  cc; int /*<<< orphan*/  txq; int /*<<< orphan*/  state; struct mlx5_wq_cyc wq; struct mlx5e_channel* channel; } ;
struct mlx5e_tx_wqe_info {int num_wqebbs; } ;
struct mlx5e_tx_wqe {int /*<<< orphan*/  ctrl; } ;
struct mlx5e_channel {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_tx_wqe_info*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5e_tx_wqe* FUNC4 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mlx5e_txqsq *sq)
{
	struct mlx5e_channel *c = sq->channel;
	struct mlx5_wq_cyc *wq = &sq->wq;

	FUNC0(MLX5E_SQ_STATE_ENABLED, &sq->state);
	/* prevent netif_tx_wake_queue */
	FUNC7(&c->napi);

	FUNC5(sq->txq);

	/* last doorbell out, godspeed .. */
	if (FUNC6(wq, sq->cc, sq->pc, 1)) {
		u16 pi = FUNC2(wq, sq->pc);
		struct mlx5e_tx_wqe_info *wi;
		struct mlx5e_tx_wqe *nop;

		wi = &sq->db.wqe_info[pi];

		FUNC1(wi, 0, sizeof(*wi));
		wi->num_wqebbs = 1;
		nop = FUNC4(wq, sq->sqn, &sq->pc);
		FUNC3(wq, sq->pc, sq->uar_map, &nop->ctrl);
	}
}