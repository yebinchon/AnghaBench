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
struct mlx5e_priv {int /*<<< orphan*/  drop_rq; int /*<<< orphan*/  indir_rqt; int /*<<< orphan*/  direct_tir; int /*<<< orphan*/  xsk_tir; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5e_priv*) ; 
 int FUNC6 (struct mlx5e_priv*) ; 
 int FUNC7 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	int err;

	FUNC8(priv);

	err = FUNC15(priv, &priv->drop_rq);
	if (err) {
		FUNC0(mdev, "open drop rq failed, %d\n", err);
		goto err_destroy_q_counters;
	}

	err = FUNC6(priv);
	if (err)
		goto err_close_drop_rq;

	err = FUNC3(priv, priv->direct_tir);
	if (err)
		goto err_destroy_indirect_rqts;

	err = FUNC7(priv, true);
	if (err)
		goto err_destroy_direct_rqts;

	err = FUNC4(priv, priv->direct_tir);
	if (err)
		goto err_destroy_indirect_tirs;

	err = FUNC3(priv, priv->xsk_tir);
	if (FUNC17(err))
		goto err_destroy_direct_tirs;

	err = FUNC4(priv, priv->xsk_tir);
	if (FUNC17(err))
		goto err_destroy_xsk_rqts;

	err = FUNC5(priv);
	if (err) {
		FUNC1(mdev, "create flow steering failed, %d\n", err);
		goto err_destroy_xsk_tirs;
	}

	err = FUNC16(priv);
	if (err)
		goto err_destroy_flow_steering;

	return 0;

err_destroy_flow_steering:
	FUNC11(priv);
err_destroy_xsk_tirs:
	FUNC10(priv, priv->xsk_tir);
err_destroy_xsk_rqts:
	FUNC9(priv, priv->xsk_tir);
err_destroy_direct_tirs:
	FUNC10(priv, priv->direct_tir);
err_destroy_indirect_tirs:
	FUNC12(priv, true);
err_destroy_direct_rqts:
	FUNC9(priv, priv->direct_tir);
err_destroy_indirect_rqts:
	FUNC14(priv, &priv->indir_rqt);
err_close_drop_rq:
	FUNC2(&priv->drop_rq);
err_destroy_q_counters:
	FUNC13(priv);
	return err;
}