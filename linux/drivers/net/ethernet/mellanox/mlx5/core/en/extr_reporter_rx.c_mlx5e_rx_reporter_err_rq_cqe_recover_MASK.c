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
typedef  scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx5e_rq {int /*<<< orphan*/  state; TYPE_1__* stats; int /*<<< orphan*/  rqn; struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  recover; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_RQ_STATE_RECOVERING ; 
 scalar_t__ MLX5_RQC_STATE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (struct mlx5e_rq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void *ctx)
{
	struct mlx5_core_dev *mdev;
	struct net_device *dev;
	struct mlx5e_rq *rq;
	u8 state;
	int err;

	rq = ctx;
	mdev = rq->mdev;
	dev = rq->netdev;
	err = FUNC4(mdev, rq->rqn, &state);
	if (err) {
		FUNC6(dev, "Failed to query RQ 0x%x state. err = %d\n",
			   rq->rqn, err);
		goto out;
	}

	if (state != MLX5_RQC_STATE_ERR)
		goto out;

	FUNC2(rq);
	FUNC3(rq);

	err = FUNC5(rq, MLX5_RQC_STATE_ERR);
	if (err)
		goto out;

	FUNC0(MLX5E_RQ_STATE_RECOVERING, &rq->state);
	FUNC1(rq);
	rq->stats->recover++;
	return 0;
out:
	FUNC0(MLX5E_RQ_STATE_RECOVERING, &rq->state);
	return err;
}