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
struct TYPE_2__ {int /*<<< orphan*/  xdpi_fifo; struct mlx5e_xdp_wqe_info* wqe_info; } ;
struct mlx5e_xdpsq {int /*<<< orphan*/ * doorbell_cseg; TYPE_1__ db; int /*<<< orphan*/  pc; int /*<<< orphan*/  sqn; int /*<<< orphan*/  wq; } ;
struct mlx5e_xdp_wqe_info {int num_wqebbs; int num_pkts; } ;
struct mlx5e_xdp_info {int dummy; } ;
struct mlx5e_tx_wqe {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlx5e_tx_wqe* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mlx5e_xdp_info*) ; 

__attribute__((used)) static void FUNC3(struct mlx5e_xdpsq *sq,
				  struct mlx5e_xdp_info *xdpi)
{
	u16 pi = FUNC0(&sq->wq, sq->pc);
	struct mlx5e_xdp_wqe_info *wi = &sq->db.wqe_info[pi];
	struct mlx5e_tx_wqe *nopwqe;

	wi->num_wqebbs = 1;
	wi->num_pkts = 1;

	nopwqe = FUNC1(&sq->wq, sq->sqn, &sq->pc);
	FUNC2(&sq->db.xdpi_fifo, xdpi);
	sq->doorbell_cseg = &nopwqe->ctrl;
}