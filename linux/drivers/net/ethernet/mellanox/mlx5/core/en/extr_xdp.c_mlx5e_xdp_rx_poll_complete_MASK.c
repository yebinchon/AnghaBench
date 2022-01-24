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
struct TYPE_2__ {scalar_t__ wqe; } ;
struct mlx5e_xdpsq {TYPE_1__ mpwqe; } ;
struct mlx5e_rq {int /*<<< orphan*/  flags; struct mlx5e_xdpsq* xdpsq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_RQ_FLAG_XDP_REDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_xdpsq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_xdpsq*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct mlx5e_rq *rq)
{
	struct mlx5e_xdpsq *xdpsq = rq->xdpsq;

	if (xdpsq->mpwqe.wqe)
		FUNC1(xdpsq);

	FUNC2(xdpsq);

	if (FUNC3(MLX5E_RQ_FLAG_XDP_REDIRECT, rq->flags)) {
		FUNC4();
		FUNC0(MLX5E_RQ_FLAG_XDP_REDIRECT, rq->flags);
	}
}