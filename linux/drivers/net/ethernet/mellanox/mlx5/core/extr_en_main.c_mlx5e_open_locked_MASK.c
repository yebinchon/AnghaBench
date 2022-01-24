#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_5__ {int xdp_prog; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct mlx5e_priv {int /*<<< orphan*/  state; TYPE_1__* profile; TYPE_3__ channels; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_carrier ) (struct mlx5e_priv*) ;int /*<<< orphan*/  (* update_rx ) (struct mlx5e_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int FUNC2 (struct mlx5e_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*) ; 

int FUNC10(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC6(netdev);
	bool is_xdp = priv->channels.params.xdp_prog;
	int err;

	FUNC7(MLX5E_STATE_OPENED, &priv->state);
	if (is_xdp)
		FUNC5(priv);

	err = FUNC2(priv, &priv->channels);
	if (err)
		goto err_clear_state_opened_flag;

	priv->profile->update_rx(priv);
	FUNC1(priv);
	if (priv->profile->update_carrier)
		priv->profile->update_carrier(priv);

	FUNC3(priv);
	return 0;

err_clear_state_opened_flag:
	if (is_xdp)
		FUNC4(priv);
	FUNC0(MLX5E_STATE_OPENED, &priv->state);
	return err;
}