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
struct mlx5e_priv {int /*<<< orphan*/  drop_rq_q_counter; int /*<<< orphan*/  q_counter; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 

void FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	int err;

	err = FUNC0(mdev, &priv->q_counter);
	if (err) {
		FUNC1(mdev, "alloc queue counter failed, %d\n", err);
		priv->q_counter = 0;
	}

	err = FUNC0(mdev, &priv->drop_rq_q_counter);
	if (err) {
		FUNC1(mdev, "alloc drop RQ counter failed, %d\n", err);
		priv->drop_rq_q_counter = 0;
	}
}