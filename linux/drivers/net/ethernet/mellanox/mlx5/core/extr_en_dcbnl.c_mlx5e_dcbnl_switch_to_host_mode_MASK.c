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
struct mlx5e_dcbx {scalar_t__ mode; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5e_dcbx dcbx; } ;

/* Variables and functions */
 scalar_t__ MLX5E_DCBX_PARAM_VER_OPER_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx5e_dcbx*) ; 
 int FUNC1 (struct mlx5e_priv*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5e_dcbx *dcbx = &priv->dcbx;
	int err;

	if (!FUNC0(priv->mdev, dcbx))
		return 0;

	if (dcbx->mode == MLX5E_DCBX_PARAM_VER_OPER_HOST)
		return 0;

	err = FUNC1(priv, MLX5E_DCBX_PARAM_VER_OPER_HOST);
	if (err)
		return err;

	dcbx->mode = MLX5E_DCBX_PARAM_VER_OPER_HOST;
	return 0;
}