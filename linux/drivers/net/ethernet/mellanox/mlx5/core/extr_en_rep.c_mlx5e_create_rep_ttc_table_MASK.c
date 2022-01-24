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
struct ttc_params {int /*<<< orphan*/ * indir_tirn; int /*<<< orphan*/  any_tt_tirn; } ;
struct TYPE_6__ {int /*<<< orphan*/  ttc; int /*<<< orphan*/  ns; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; TYPE_3__ fs; TYPE_2__* indir_tir; TYPE_1__* direct_tir; int /*<<< orphan*/  mdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  tirn; } ;
struct TYPE_4__ {int /*<<< orphan*/  tirn; } ;

/* Variables and functions */
 int MLX5E_NUM_INDIR_TIRS ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_priv*,struct ttc_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ttc_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_priv *priv)
{
	struct ttc_params ttc_params = {};
	int tt, err;

	priv->fs.ns = FUNC0(priv->mdev,
					      MLX5_FLOW_NAMESPACE_KERNEL);

	/* The inner_ttc in the ttc params is intentionally not set */
	ttc_params.any_tt_tirn = priv->direct_tir[0].tirn;
	FUNC2(&ttc_params);
	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
		ttc_params.indir_tirn[tt] = priv->indir_tir[tt].tirn;

	err = FUNC1(priv, &ttc_params, &priv->fs.ttc);
	if (err) {
		FUNC3(priv->netdev, "Failed to create rep ttc table, err=%d\n", err);
		return err;
	}
	return 0;
}