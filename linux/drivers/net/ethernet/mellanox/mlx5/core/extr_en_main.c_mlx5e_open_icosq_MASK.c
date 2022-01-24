#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_sq_param {int dummy; } ;
struct mlx5e_params {int /*<<< orphan*/  tx_min_inline_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_4__ {TYPE_1__ mcq; } ;
struct mlx5e_icosq {int /*<<< orphan*/  sqn; int /*<<< orphan*/  wq_ctrl; TYPE_2__ cq; } ;
struct mlx5e_create_sq_param {int /*<<< orphan*/  min_inline_mode; int /*<<< orphan*/ * wq_ctrl; int /*<<< orphan*/  cqn; } ;
struct mlx5e_channel {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_channel*,struct mlx5e_sq_param*,struct mlx5e_icosq*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mlx5e_sq_param*,struct mlx5e_create_sq_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_icosq*) ; 

int FUNC3(struct mlx5e_channel *c, struct mlx5e_params *params,
		     struct mlx5e_sq_param *param, struct mlx5e_icosq *sq)
{
	struct mlx5e_create_sq_param csp = {};
	int err;

	err = FUNC0(c, param, sq);
	if (err)
		return err;

	csp.cqn             = sq->cq.mcq.cqn;
	csp.wq_ctrl         = &sq->wq_ctrl;
	csp.min_inline_mode = params->tx_min_inline_mode;
	err = FUNC1(c->mdev, param, &csp, &sq->sqn);
	if (err)
		goto err_free_icosq;

	return 0;

err_free_icosq:
	FUNC2(sq);

	return err;
}