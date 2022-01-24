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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {scalar_t__ rate_limit; int /*<<< orphan*/  sqn; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_modify_sq_param {int rl_update; int /*<<< orphan*/  rl_index; void* next_state; void* curr_state; int /*<<< orphan*/  member_0; } ;
struct mlx5_rate_limit {scalar_t__ rate; int /*<<< orphan*/  member_0; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 void* MLX5_SQC_STATE_RDY ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ *,struct mlx5_rate_limit*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,struct mlx5_rate_limit*) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,struct mlx5e_modify_sq_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,scalar_t__,int) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				struct mlx5e_txqsq *sq, u32 rate)
{
	struct mlx5e_priv *priv = FUNC4(dev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_modify_sq_param msp = {0};
	struct mlx5_rate_limit rl = {0};
	u16 rl_index = 0;
	int err;

	if (rate == sq->rate_limit)
		/* nothing to do */
		return 0;

	if (sq->rate_limit) {
		rl.rate = sq->rate_limit;
		/* remove current rl index to free space to next ones */
		FUNC1(mdev, &rl);
	}

	sq->rate_limit = 0;

	if (rate) {
		rl.rate = rate;
		err = FUNC0(mdev, &rl_index, &rl);
		if (err) {
			FUNC3(dev, "Failed configuring rate %u: %d\n",
				   rate, err);
			return err;
		}
	}

	msp.curr_state = MLX5_SQC_STATE_RDY;
	msp.next_state = MLX5_SQC_STATE_RDY;
	msp.rl_index   = rl_index;
	msp.rl_update  = true;
	err = FUNC2(mdev, sq->sqn, &msp);
	if (err) {
		FUNC3(dev, "Failed configuring rate %u: %d\n",
			   rate, err);
		/* remove the rate from the table */
		if (rate)
			FUNC1(mdev, &rl);
		return err;
	}

	sq->rate_limit = rate;
	return 0;
}