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
struct mlx5e_cq_param {int dummy; } ;
struct mlx5e_cq {int /*<<< orphan*/  mcq; } ;
struct mlx5e_channel {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct dim_cq_moder {int /*<<< orphan*/  pkts; int /*<<< orphan*/  usec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cq_moderation ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5e_channel*,struct mlx5e_cq_param*,struct mlx5e_cq*) ; 
 int FUNC3 (struct mlx5e_cq*,struct mlx5e_cq_param*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_cq*) ; 

int FUNC5(struct mlx5e_channel *c, struct dim_cq_moder moder,
		  struct mlx5e_cq_param *param, struct mlx5e_cq *cq)
{
	struct mlx5_core_dev *mdev = c->mdev;
	int err;

	err = FUNC2(c, param, cq);
	if (err)
		return err;

	err = FUNC3(cq, param);
	if (err)
		goto err_free_cq;

	if (FUNC0(mdev, cq_moderation))
		FUNC1(mdev, &cq->mcq, moder.usec, moder.pkts);
	return 0;

err_free_cq:
	FUNC4(cq);

	return err;
}