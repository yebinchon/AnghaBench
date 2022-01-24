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
struct mlx5e_priv {int /*<<< orphan*/  drop_rq; int /*<<< orphan*/  indir_rqt; int /*<<< orphan*/  direct_tir; int /*<<< orphan*/  xsk_tir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*) ; 

__attribute__((used)) static void FUNC8(struct mlx5e_priv *priv)
{
	FUNC7(priv);
	FUNC3(priv);
	FUNC2(priv, priv->xsk_tir);
	FUNC1(priv, priv->xsk_tir);
	FUNC2(priv, priv->direct_tir);
	FUNC4(priv, true);
	FUNC1(priv, priv->direct_tir);
	FUNC6(priv, &priv->indir_rqt);
	FUNC0(&priv->drop_rq);
	FUNC5(priv);
}