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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5e_channel_param {int /*<<< orphan*/  icosq_cq; int /*<<< orphan*/  tx_cq; int /*<<< orphan*/  rx_cq; int /*<<< orphan*/  icosq; int /*<<< orphan*/  xdp_sq; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx5e_priv *priv,
				   struct mlx5e_params *params,
				   struct mlx5e_xsk_param *xsk,
				   struct mlx5e_channel_param *cparam)
{
	const u8 xskicosq_size = MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE;

	FUNC1(priv, params, xsk, &cparam->rq);
	FUNC4(priv, params, &cparam->xdp_sq);
	FUNC5(priv, xskicosq_size, &cparam->icosq);
	FUNC2(priv, params, xsk, &cparam->rx_cq);
	FUNC3(priv, params, &cparam->tx_cq);
	FUNC0(priv, xskicosq_size, &cparam->icosq_cq);
}