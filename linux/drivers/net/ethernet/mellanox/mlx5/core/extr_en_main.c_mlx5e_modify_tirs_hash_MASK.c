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
struct mlx5e_tirc_config {int dummy; } ;
struct mlx5e_rss_params {int /*<<< orphan*/ * rx_hash_fields; } ;
struct mlx5e_priv {TYPE_2__* inner_indir_tir; struct mlx5_core_dev* mdev; TYPE_1__* indir_tir; struct mlx5e_rss_params rss_params; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {int /*<<< orphan*/  tirn; } ;
struct TYPE_4__ {int /*<<< orphan*/  tirn; } ;

/* Variables and functions */
 int MLX5E_NUM_INDIR_TIRS ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 TYPE_3__ bitmask ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_rss_params*,struct mlx5e_tirc_config*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_tirc_config*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modify_tir_in ; 

void FUNC8(struct mlx5e_priv *priv, void *in, int inlen)
{
	void *tirc = FUNC0(modify_tir_in, in, ctx);
	struct mlx5e_rss_params *rss = &priv->rss_params;
	struct mlx5_core_dev *mdev = priv->mdev;
	int ctxlen = FUNC2(tirc);
	struct mlx5e_tirc_config ttconfig;
	int tt;

	FUNC1(modify_tir_in, in, bitmask.hash, 1);

	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
		FUNC3(tirc, 0, ctxlen);
		FUNC7(&ttconfig, tt,
					    rss->rx_hash_fields[tt]);
		FUNC5(rss, &ttconfig, tirc, false);
		FUNC4(mdev, priv->indir_tir[tt].tirn, in, inlen);
	}

	if (!FUNC6(priv->mdev))
		return;

	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
		FUNC3(tirc, 0, ctxlen);
		FUNC7(&ttconfig, tt,
					    rss->rx_hash_fields[tt]);
		FUNC5(rss, &ttconfig, tirc, true);
		FUNC4(mdev, priv->inner_indir_tir[tt].tirn, in,
				     inlen);
	}
}