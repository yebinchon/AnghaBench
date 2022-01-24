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
struct mlx5e_profile {int /*<<< orphan*/  (* cleanup_tx ) (struct mlx5e_priv*) ;int /*<<< orphan*/  (* cleanup_rx ) (struct mlx5e_priv*) ;int /*<<< orphan*/  (* disable ) (struct mlx5e_priv*) ;} ;
struct mlx5e_priv {int /*<<< orphan*/  update_stats_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  state; struct mlx5e_profile* profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_DESTROYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 

void FUNC6(struct mlx5e_priv *priv)
{
	const struct mlx5e_profile *profile = priv->profile;

	FUNC2(MLX5E_STATE_DESTROYING, &priv->state);

	if (profile->disable)
		profile->disable(priv);
	FUNC1(priv->wq);

	profile->cleanup_rx(priv);
	profile->cleanup_tx(priv);
	FUNC0(&priv->update_stats_work);
}