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
struct mlx5e_dcbx {scalar_t__ mode; int cap; int manual_buffer; int /*<<< orphan*/  cable_len; } ;
struct mlx5e_priv {struct mlx5e_dcbx dcbx; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_HOST ; 
 int DCB_CAP_DCBX_VER_CEE ; 
 int DCB_CAP_DCBX_VER_IEEE ; 
 scalar_t__ MLX5E_DCBX_PARAM_VER_OPER_HOST ; 
 int /*<<< orphan*/  MLX5E_DEFAULT_CABLE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct mlx5e_dcbx*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 struct mlx5e_dcbx* qos ; 

void FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5e_dcbx *dcbx = &priv->dcbx;

	FUNC3(priv);

	if (!FUNC0(priv->mdev, qos))
		return;

	if (FUNC0(priv->mdev, dcbx))
		FUNC1(priv, &dcbx->mode);

	priv->dcbx.cap = DCB_CAP_DCBX_VER_CEE |
			 DCB_CAP_DCBX_VER_IEEE;
	if (priv->dcbx.mode == MLX5E_DCBX_PARAM_VER_OPER_HOST)
		priv->dcbx.cap |= DCB_CAP_DCBX_HOST;

	priv->dcbx.manual_buffer = false;
	priv->dcbx.cable_len = MLX5E_DEFAULT_CABLE_LEN;

	FUNC2(priv);
}