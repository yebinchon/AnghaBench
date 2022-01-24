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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5e_rx_wqe_ll {TYPE_2__ next; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_6__ {struct mlx5_wq_cyc wq; } ;
struct mlx5_wq_ll {int /*<<< orphan*/ * tail_next; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {int umr_in_progress; struct mlx5_wq_ll wq; } ;
struct mlx5e_rq {scalar_t__ wq_type; int /*<<< orphan*/  (* dealloc_wqe ) (struct mlx5e_rq*,int /*<<< orphan*/ ) ;TYPE_3__ wqe; TYPE_1__ mpwqe; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_wq_cyc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_wq_cyc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_wq_cyc*) ; 
 struct mlx5e_rx_wqe_ll* FUNC4 (struct mlx5_wq_ll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_wq_ll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_wq_ll*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_wq_ll*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 

void FUNC11(struct mlx5e_rq *rq)
{
	__be16 wqe_ix_be;
	u16 wqe_ix;

	if (rq->wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ) {
		struct mlx5_wq_ll *wq = &rq->mpwqe.wq;
		u16 head = wq->head;
		int i;

		/* Outstanding UMR WQEs (in progress) start at wq->head */
		for (i = 0; i < rq->mpwqe.umr_in_progress; i++) {
			rq->dealloc_wqe(rq, head);
			head = FUNC5(wq, head);
		}

		while (!FUNC6(wq)) {
			struct mlx5e_rx_wqe_ll *wqe;

			wqe_ix_be = *wq->tail_next;
			wqe_ix    = FUNC0(wqe_ix_be);
			wqe       = FUNC4(wq, wqe_ix);
			rq->dealloc_wqe(rq, wqe_ix);
			FUNC7(wq, wqe_ix_be,
				       &wqe->next.next_wqe_index);
		}
	} else {
		struct mlx5_wq_cyc *wq = &rq->wqe.wq;

		while (!FUNC2(wq)) {
			wqe_ix = FUNC1(wq);
			rq->dealloc_wqe(rq, wqe_ix);
			FUNC3(wq);
		}
	}

}