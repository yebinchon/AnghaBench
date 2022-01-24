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
struct mlx5e_priv {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5e_channel_param {int /*<<< orphan*/  icosq_cq; int /*<<< orphan*/  tx_cq; int /*<<< orphan*/  rx_cq; int /*<<< orphan*/  icosq; int /*<<< orphan*/  xdp_sq; int /*<<< orphan*/  sq; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mlx5e_priv *priv,
				      struct mlx5e_params *params,
				      struct mlx5e_channel_param *cparam)
{
	u8 icosq_log_wq_sz;

	FUNC3(priv, params, NULL, &cparam->rq);

	icosq_log_wq_sz = FUNC1(params, &cparam->rq);

	FUNC5(priv, params, &cparam->sq);
	FUNC7(priv, params, &cparam->xdp_sq);
	FUNC2(priv, icosq_log_wq_sz, &cparam->icosq);
	FUNC4(priv, params, NULL, &cparam->rx_cq);
	FUNC6(priv, params, &cparam->tx_cq);
	FUNC0(priv, icosq_log_wq_sz, &cparam->icosq_cq);
}