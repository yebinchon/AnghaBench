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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rqtn; } ;
struct mlx5e_tir {TYPE_1__ rqt; } ;
struct mlx5e_priv {int max_nch; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_tir_in ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mlx5e_tir*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mlx5e_tir*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
	struct mlx5e_tir *tir;
	void *tirc;
	int inlen;
	int err = 0;
	u32 *in;
	int ix;

	inlen = FUNC1(create_tir_in);
	in = FUNC3(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	for (ix = 0; ix < priv->max_nch; ix++) {
		FUNC4(in, 0, inlen);
		tir = &tirs[ix];
		tirc = FUNC0(create_tir_in, in, ctx);
		FUNC6(priv, tir->rqt.rqtn, tirc);
		err = FUNC7(priv->mdev, tir, in, inlen);
		if (FUNC9(err))
			goto err_destroy_ch_tirs;
	}

	goto out;

err_destroy_ch_tirs:
	FUNC5(priv->mdev, "create tirs failed, %d\n", err);
	for (ix--; ix >= 0; ix--)
		FUNC8(priv->mdev, &tirs[ix]);

out:
	FUNC2(in);

	return err;
}