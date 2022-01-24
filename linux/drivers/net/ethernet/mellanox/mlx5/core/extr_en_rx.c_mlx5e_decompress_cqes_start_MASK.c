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
typedef  scalar_t__ u32 ;
struct mlx5e_cq_decomp {int /*<<< orphan*/  mini_arr_idx; int /*<<< orphan*/  title; } ;
struct mlx5e_rq {int /*<<< orphan*/  (* handle_rx_cqe ) (struct mlx5e_rq*,int /*<<< orphan*/ *) ;struct mlx5e_cq_decomp cqd; } ;
struct mlx5_cqwq {scalar_t__ cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_rq*,struct mlx5_cqwq*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct mlx5e_rq*,struct mlx5_cqwq*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_cqwq*,struct mlx5e_cq_decomp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*,struct mlx5_cqwq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_rq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline u32 FUNC5(struct mlx5e_rq *rq,
					      struct mlx5_cqwq *wq,
					      int budget_rem)
{
	struct mlx5e_cq_decomp *cqd = &rq->cqd;
	u32 cc = wq->cc;

	FUNC3(rq, wq, cc);
	FUNC2(wq, cqd, cc + 1);
	FUNC0(rq, wq, cc);
	rq->handle_rx_cqe(rq, &cqd->title);
	cqd->mini_arr_idx++;

	return FUNC1(rq, wq, 1, budget_rem) - 1;
}