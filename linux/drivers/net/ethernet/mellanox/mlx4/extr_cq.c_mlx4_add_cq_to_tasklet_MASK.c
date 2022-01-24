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
struct mlx4_eq_tasklet {int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; struct mlx4_eq_tasklet* priv; } ;
struct mlx4_cq {TYPE_1__ tasklet_ctx; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mlx4_cq *cq)
{
	struct mlx4_eq_tasklet *tasklet_ctx = cq->tasklet_ctx.priv;
	unsigned long flags;
	bool kick;

	FUNC4(&tasklet_ctx->lock, flags);
	/* When migrating CQs between EQs will be implemented, please note
	 * that you need to sync this point. It is possible that
	 * while migrating a CQ, completions on the old EQs could
	 * still arrive.
	 */
	if (FUNC2(&cq->tasklet_ctx.list)) {
		FUNC3(&cq->refcount);
		kick = FUNC1(&tasklet_ctx->list);
		FUNC0(&cq->tasklet_ctx.list, &tasklet_ctx->list);
		if (kick)
			FUNC6(&tasklet_ctx->task);
	}
	FUNC5(&tasklet_ctx->lock, flags);
}