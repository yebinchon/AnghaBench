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
struct TYPE_4__ {struct mlx5_eq_comp* eq; } ;
struct TYPE_5__ {TYPE_1__ mcq; } ;
struct mlx5e_rq {TYPE_3__* channel; TYPE_2__ cq; } ;
struct mlx5e_icosq {int /*<<< orphan*/  state; } ;
struct mlx5_eq_comp {int dummy; } ;
struct TYPE_6__ {struct mlx5e_icosq icosq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_eq_comp*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC2(void *ctx)
{
	struct mlx5e_icosq *icosq;
	struct mlx5_eq_comp *eq;
	struct mlx5e_rq *rq;
	int err;

	rq = ctx;
	icosq = &rq->channel->icosq;
	eq = rq->cq.mcq.eq;
	err = FUNC1(eq, rq->channel);
	if (err)
		FUNC0(MLX5E_SQ_STATE_ENABLED, &icosq->state);

	return err;
}