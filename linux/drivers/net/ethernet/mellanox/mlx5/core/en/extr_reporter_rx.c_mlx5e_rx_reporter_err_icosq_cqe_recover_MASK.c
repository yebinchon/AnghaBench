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
typedef  scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx5e_rq {TYPE_1__* stats; } ;
struct mlx5e_icosq {int /*<<< orphan*/  state; int /*<<< orphan*/  sqn; TYPE_2__* channel; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {struct net_device* netdev; struct mlx5_core_dev* mdev; struct mlx5e_rq rq; } ;
struct TYPE_3__ {int /*<<< orphan*/  recover; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_RECOVERING ; 
 scalar_t__ MLX5_SQC_STATE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_icosq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_icosq*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_rq*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_icosq*) ; 
 int FUNC9 (struct mlx5e_icosq*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(void *ctx)
{
	struct mlx5_core_dev *mdev;
	struct mlx5e_icosq *icosq;
	struct net_device *dev;
	struct mlx5e_rq *rq;
	u8 state;
	int err;

	icosq = ctx;
	rq = &icosq->channel->rq;
	mdev = icosq->channel->mdev;
	dev = icosq->channel->netdev;
	err = FUNC1(mdev, icosq->sqn, &state);
	if (err) {
		FUNC10(dev, "Failed to query ICOSQ 0x%x state. err = %d\n",
			   icosq->sqn, err);
		goto out;
	}

	if (state != MLX5_SQC_STATE_ERR)
		goto out;

	FUNC5(rq);
	err = FUNC9(icosq);
	if (err)
		goto out;

	FUNC4(icosq);

	/* At this point, both the rq and the icosq are disabled */

	err = FUNC7(icosq->channel, icosq->sqn);
	if (err)
		goto out;

	FUNC8(icosq);
	FUNC6(rq);
	FUNC0(MLX5E_SQ_STATE_RECOVERING, &icosq->state);
	FUNC2(icosq);
	FUNC3(rq);

	rq->stats->recover++;
	return 0;
out:
	FUNC0(MLX5E_SQ_STATE_RECOVERING, &icosq->state);
	return err;
}