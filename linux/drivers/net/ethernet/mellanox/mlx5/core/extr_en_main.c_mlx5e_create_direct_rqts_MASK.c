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
struct mlx5e_tir {int /*<<< orphan*/  rqt; } ;
struct mlx5e_priv {int max_nch; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mlx5e_priv*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
	int err;
	int ix;

	for (ix = 0; ix < priv->max_nch; ix++) {
		err = FUNC1(priv, 1 /*size */, &tirs[ix].rqt);
		if (FUNC3(err))
			goto err_destroy_rqts;
	}

	return 0;

err_destroy_rqts:
	FUNC0(priv->mdev, "create rqts failed, %d\n", err);
	for (ix--; ix >= 0; ix--)
		FUNC2(priv, &tirs[ix].rqt);

	return err;
}