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
struct mlx5_eqe {int dummy; } ;
struct mlx5_eq_tasklet {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; struct mlx5_eq_tasklet* priv; } ;
struct mlx5_core_cq {TYPE_1__ tasklet_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_cq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mlx5_core_cq *cq,
				   struct mlx5_eqe *eqe)
{
	unsigned long flags;
	struct mlx5_eq_tasklet *tasklet_ctx = cq->tasklet_ctx.priv;

	FUNC3(&tasklet_ctx->lock, flags);
	/* When migrating CQs between EQs will be implemented, please note
	 * that you need to sync this point. It is possible that
	 * while migrating a CQ, completions on the old EQs could
	 * still arrive.
	 */
	if (FUNC1(&cq->tasklet_ctx.list)) {
		FUNC2(cq);
		FUNC0(&cq->tasklet_ctx.list, &tasklet_ctx->list);
	}
	FUNC4(&tasklet_ctx->lock, flags);
}