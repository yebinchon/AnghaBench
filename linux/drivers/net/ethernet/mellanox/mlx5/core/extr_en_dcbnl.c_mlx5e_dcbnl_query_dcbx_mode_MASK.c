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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
typedef  enum mlx5_dcbx_oper_mode { ____Placeholder_mlx5_dcbx_oper_mode } mlx5_dcbx_oper_mode ;

/* Variables and functions */
 int MLX5E_DCBX_PARAM_VER_OPER_AUTO ; 
 int MLX5E_DCBX_PARAM_VER_OPER_HOST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcbx_param ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  version_oper ; 

__attribute__((used)) static void FUNC3(struct mlx5e_priv *priv,
					enum mlx5_dcbx_oper_mode *mode)
{
	u32 out[FUNC1(dcbx_param)];

	*mode = MLX5E_DCBX_PARAM_VER_OPER_HOST;

	if (!FUNC2(priv->mdev, out))
		*mode = FUNC0(dcbx_param, out, version_oper);

	/* From driver's point of view, we only care if the mode
	 * is host (HOST) or non-host (AUTO)
	 */
	if (*mode != MLX5E_DCBX_PARAM_VER_OPER_HOST)
		*mode = MLX5E_DCBX_PARAM_VER_OPER_AUTO;
}