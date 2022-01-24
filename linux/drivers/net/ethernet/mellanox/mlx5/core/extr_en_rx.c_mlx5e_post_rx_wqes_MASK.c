#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {scalar_t__ wqe_bulk; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_5__ {TYPE_3__ info; struct mlx5_wq_cyc wq; } ;
struct mlx5e_rq {TYPE_1__* stats; TYPE_2__ wqe; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  buff_alloc_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_RQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_wq_cyc*) ; 
 scalar_t__ FUNC2 (struct mlx5_wq_cyc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_wq_cyc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_wq_cyc*) ; 
 int FUNC5 (struct mlx5e_rq*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

bool FUNC8(struct mlx5e_rq *rq)
{
	struct mlx5_wq_cyc *wq = &rq->wqe.wq;
	u8 wqe_bulk;
	int err;

	if (FUNC7(!FUNC6(MLX5E_RQ_STATE_ENABLED, &rq->state)))
		return false;

	wqe_bulk = rq->wqe.info.wqe_bulk;

	if (FUNC2(wq) < wqe_bulk)
		return false;

	do {
		u16 head = FUNC1(wq);

		err = FUNC5(rq, head, wqe_bulk);
		if (FUNC7(err)) {
			rq->stats->buff_alloc_err++;
			break;
		}

		FUNC3(wq, wqe_bulk);
	} while (FUNC2(wq) >= wqe_bulk);

	/* ensure wqes are visible to device before updating doorbell record */
	FUNC0();

	FUNC4(wq);

	return !!err;
}