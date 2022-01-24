#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_rep_priv {int /*<<< orphan*/  vport_rx_rule; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttc; } ;
struct mlx5e_priv {int /*<<< orphan*/  drop_rq; int /*<<< orphan*/  indir_rqt; int /*<<< orphan*/  direct_tir; TYPE_1__ fs; struct mlx5e_rep_priv* ppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mlx5e_priv *priv)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;

	FUNC0(rpriv->vport_rx_rule);
	FUNC6(priv, &priv->fs.ttc);
	FUNC3(priv, priv->direct_tir);
	FUNC4(priv, false);
	FUNC2(priv, priv->direct_tir);
	FUNC5(priv, &priv->indir_rqt);
	FUNC1(&priv->drop_rq);
}