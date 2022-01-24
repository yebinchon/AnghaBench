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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct mlx5e_txqsq {scalar_t__ rate_limit; int /*<<< orphan*/  sqn; int /*<<< orphan*/  recover_work; TYPE_1__ dim; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {struct mlx5_core_dev* mdev; } ;
struct mlx5_rate_limit {scalar_t__ rate; int /*<<< orphan*/  member_0; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,struct mlx5_rate_limit*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_txqsq*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_txqsq*) ; 

__attribute__((used)) static void FUNC5(struct mlx5e_txqsq *sq)
{
	struct mlx5e_channel *c = sq->channel;
	struct mlx5_core_dev *mdev = c->mdev;
	struct mlx5_rate_limit rl = {0};

	FUNC0(&sq->dim.work);
	FUNC0(&sq->recover_work);
	FUNC2(mdev, sq->sqn);
	if (sq->rate_limit) {
		rl.rate = sq->rate_limit;
		FUNC1(mdev, &rl);
	}
	FUNC4(sq);
	FUNC3(sq);
}