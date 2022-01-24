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
struct mlx5i_priv {int /*<<< orphan*/  qp; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_qp_context {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_OP_2RST_QP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_qp_context*,int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5i_priv *ipriv = priv->ppriv;
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5_qp_context context;
	int err;

	err = FUNC1(mdev, MLX5_CMD_OP_2RST_QP, 0, &context,
				  &ipriv->qp);
	if (err)
		FUNC0(mdev, "Failed to modify qp 2RST, err: %d\n", err);
}