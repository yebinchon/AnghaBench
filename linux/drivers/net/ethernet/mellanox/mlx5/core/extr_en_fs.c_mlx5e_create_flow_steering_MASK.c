#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ttc_params {int /*<<< orphan*/ * indir_tirn; } ;
struct TYPE_7__ {int /*<<< orphan*/  inner_ttc; int /*<<< orphan*/  ttc; int /*<<< orphan*/  ns; } ;
struct mlx5e_priv {TYPE_3__ fs; TYPE_4__* netdev; TYPE_2__* indir_tir; TYPE_1__* inner_indir_tir; int /*<<< orphan*/  mdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_features; } ;
struct TYPE_6__ {int /*<<< orphan*/  tirn; } ;
struct TYPE_5__ {int /*<<< orphan*/  tirn; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MLX5E_NUM_INDIR_TIRS ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_KERNEL ; 
 int /*<<< orphan*/  NETIF_F_NTUPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int FUNC3 (struct mlx5e_priv*,struct ttc_params*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5e_priv*) ; 
 int FUNC5 (struct mlx5e_priv*,struct ttc_params*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct ttc_params*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_priv*,struct ttc_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct ttc_params*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*,int) ; 

int FUNC15(struct mlx5e_priv *priv)
{
	struct ttc_params ttc_params = {};
	int tt, err;

	priv->fs.ns = FUNC0(priv->mdev,
					       MLX5_FLOW_NAMESPACE_KERNEL);

	if (!priv->fs.ns)
		return -EOPNOTSUPP;

	err = FUNC1(priv);
	if (err) {
		FUNC14(priv->netdev, "Failed to create arfs tables, err=%d\n",
			   err);
		priv->netdev->hw_features &= ~NETIF_F_NTUPLE;
	}

	FUNC12(priv, &ttc_params);
	FUNC11(&ttc_params);
	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
		ttc_params.indir_tirn[tt] = priv->inner_indir_tir[tt].tirn;

	err = FUNC3(priv, &ttc_params, &priv->fs.inner_ttc);
	if (err) {
		FUNC14(priv->netdev, "Failed to create inner ttc table, err=%d\n",
			   err);
		goto err_destroy_arfs_tables;
	}

	FUNC13(&ttc_params);
	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
		ttc_params.indir_tirn[tt] = priv->indir_tir[tt].tirn;

	err = FUNC5(priv, &ttc_params, &priv->fs.ttc);
	if (err) {
		FUNC14(priv->netdev, "Failed to create ttc table, err=%d\n",
			   err);
		goto err_destroy_inner_ttc_table;
	}

	err = FUNC4(priv);
	if (err) {
		FUNC14(priv->netdev, "Failed to create l2 table, err=%d\n",
			   err);
		goto err_destroy_ttc_table;
	}

	err = FUNC6(priv);
	if (err) {
		FUNC14(priv->netdev, "Failed to create vlan table, err=%d\n",
			   err);
		goto err_destroy_l2_table;
	}

	FUNC10(priv);

	return 0;

err_destroy_l2_table:
	FUNC8(priv);
err_destroy_ttc_table:
	FUNC9(priv, &priv->fs.ttc);
err_destroy_inner_ttc_table:
	FUNC7(priv, &priv->fs.inner_ttc);
err_destroy_arfs_tables:
	FUNC2(priv);

	return err;
}