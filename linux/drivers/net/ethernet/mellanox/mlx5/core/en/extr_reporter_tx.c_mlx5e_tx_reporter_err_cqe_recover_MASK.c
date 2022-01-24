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
struct mlx5e_txqsq {int /*<<< orphan*/  state; TYPE_1__* stats; int /*<<< orphan*/  sqn; TYPE_2__* channel; int /*<<< orphan*/  txq; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  recover; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_RECOVERING ; 
 scalar_t__ MLX5_SQC_STATE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_txqsq*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_txqsq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5e_txqsq*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *ctx)
{
	struct mlx5_core_dev *mdev;
	struct net_device *dev;
	struct mlx5e_txqsq *sq;
	u8 state;
	int err;

	sq = ctx;
	mdev = sq->channel->mdev;
	dev = sq->channel->netdev;

	if (!FUNC8(MLX5E_SQ_STATE_RECOVERING, &sq->state))
		return 0;

	err = FUNC1(mdev, sq->sqn, &state);
	if (err) {
		FUNC7(dev, "Failed to query SQ 0x%x state. err = %d\n",
			   sq->sqn, err);
		goto out;
	}

	if (state != MLX5_SQC_STATE_ERR)
		goto out;

	FUNC5(sq->txq);

	err = FUNC6(sq);
	if (err)
		goto out;

	/* At this point, no new packets will arrive from the stack as TXQ is
	 * marked with QUEUE_STATE_DRV_XOFF. In addition, NAPI cleared all
	 * pending WQEs. SQ can safely reset the SQ.
	 */

	err = FUNC3(sq->channel, sq->sqn);
	if (err)
		goto out;

	FUNC4(sq);
	sq->stats->recover++;
	FUNC0(MLX5E_SQ_STATE_RECOVERING, &sq->state);
	FUNC2(sq);

	return 0;
out:
	FUNC0(MLX5E_SQ_STATE_RECOVERING, &sq->state);
	return err;
}