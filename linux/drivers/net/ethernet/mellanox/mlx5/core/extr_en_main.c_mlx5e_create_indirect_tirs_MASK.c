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
struct mlx5e_tir {int dummy; } ;
struct mlx5e_priv {struct mlx5e_tir* indir_tir; int /*<<< orphan*/  mdev; struct mlx5e_tir* inner_indir_tir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5E_NUM_INDIR_TIRS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_tir_in ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*,int,void*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct mlx5e_tir*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mlx5e_tir*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct mlx5e_priv *priv, bool inner_ttc)
{
	struct mlx5e_tir *tir;
	void *tirc;
	int inlen;
	int i = 0;
	int err;
	u32 *in;
	int tt;

	inlen = FUNC1(create_tir_in);
	in = FUNC3(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
		FUNC4(in, 0, inlen);
		tir = &priv->indir_tir[tt];
		tirc = FUNC0(create_tir_in, in, ctx);
		FUNC6(priv, tt, tirc);
		err = FUNC8(priv->mdev, tir, in, inlen);
		if (err) {
			FUNC5(priv->mdev, "create indirect tirs failed, %d\n", err);
			goto err_destroy_inner_tirs;
		}
	}

	if (!inner_ttc || !FUNC10(priv->mdev))
		goto out;

	for (i = 0; i < MLX5E_NUM_INDIR_TIRS; i++) {
		FUNC4(in, 0, inlen);
		tir = &priv->inner_indir_tir[i];
		tirc = FUNC0(create_tir_in, in, ctx);
		FUNC7(priv, i, tirc);
		err = FUNC8(priv->mdev, tir, in, inlen);
		if (err) {
			FUNC5(priv->mdev, "create inner indirect tirs failed, %d\n", err);
			goto err_destroy_inner_tirs;
		}
	}

out:
	FUNC2(in);

	return 0;

err_destroy_inner_tirs:
	for (i--; i >= 0; i--)
		FUNC9(priv->mdev, &priv->inner_indir_tir[i]);

	for (tt--; tt >= 0; tt--)
		FUNC9(priv->mdev, &priv->indir_tir[tt]);

	FUNC2(in);

	return err;
}