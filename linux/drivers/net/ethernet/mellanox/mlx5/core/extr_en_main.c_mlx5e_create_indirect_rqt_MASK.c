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
struct mlx5e_rqt {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5e_rqt indir_rqt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_INDIR_RQT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ ,struct mlx5e_rqt*) ; 

int FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5e_rqt *rqt = &priv->indir_rqt;
	int err;

	err = FUNC1(priv, MLX5E_INDIR_RQT_SIZE, rqt);
	if (err)
		FUNC0(priv->mdev, "create indirect rqts failed, %d\n", err);
	return err;
}