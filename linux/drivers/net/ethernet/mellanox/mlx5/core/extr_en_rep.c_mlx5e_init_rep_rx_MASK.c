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
struct TYPE_2__ {int /*<<< orphan*/  ttc; } ;
struct mlx5e_priv {int /*<<< orphan*/  drop_rq; int /*<<< orphan*/  indir_rqt; int /*<<< orphan*/  direct_tir; TYPE_1__ fs; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5e_priv*) ; 
 int FUNC5 (struct mlx5e_priv*,int) ; 
 int FUNC6 (struct mlx5e_priv*) ; 
 int FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5e_priv*) ; 
 int FUNC14 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	int err;

	FUNC13(priv);

	err = FUNC14(priv, &priv->drop_rq);
	if (err) {
		FUNC0(mdev, "open drop rq failed, %d\n", err);
		return err;
	}

	err = FUNC4(priv);
	if (err)
		goto err_close_drop_rq;

	err = FUNC2(priv, priv->direct_tir);
	if (err)
		goto err_destroy_indirect_rqts;

	err = FUNC5(priv, false);
	if (err)
		goto err_destroy_direct_rqts;

	err = FUNC3(priv, priv->direct_tir);
	if (err)
		goto err_destroy_indirect_tirs;

	err = FUNC6(priv);
	if (err)
		goto err_destroy_direct_tirs;

	err = FUNC7(priv);
	if (err)
		goto err_destroy_ttc_table;

	return 0;

err_destroy_ttc_table:
	FUNC12(priv, &priv->fs.ttc);
err_destroy_direct_tirs:
	FUNC9(priv, priv->direct_tir);
err_destroy_indirect_tirs:
	FUNC10(priv, false);
err_destroy_direct_rqts:
	FUNC8(priv, priv->direct_tir);
err_destroy_indirect_rqts:
	FUNC11(priv, &priv->indir_rqt);
err_close_drop_rq:
	FUNC1(&priv->drop_rq);
	return err;
}