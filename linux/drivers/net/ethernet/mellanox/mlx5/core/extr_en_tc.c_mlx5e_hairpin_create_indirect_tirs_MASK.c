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
struct mlx5e_tirc_config {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  rss_params; } ;
struct TYPE_2__ {int /*<<< orphan*/  rqtn; } ;
struct mlx5e_hairpin {int /*<<< orphan*/ * indir_tirn; int /*<<< orphan*/  func_mdev; TYPE_1__ indir_rqt; int /*<<< orphan*/  tdn; struct mlx5e_priv* func_priv; } ;

/* Variables and functions */
 int MLX5E_NUM_INDIR_TIRS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_TIRC_DISP_TYPE_INDIRECT ; 
 int /*<<< orphan*/  create_tir_in ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  disp_type ; 
 int /*<<< orphan*/  indirect_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mlx5e_tirc_config*,void*,int) ; 
 struct mlx5e_tirc_config FUNC9 (int) ; 
 int /*<<< orphan*/  transport_domain ; 

__attribute__((used)) static int FUNC10(struct mlx5e_hairpin *hp)
{
	struct mlx5e_priv *priv = hp->func_priv;
	u32 in[FUNC3(create_tir_in)];
	int tt, i, err;
	void *tirc;

	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
		struct mlx5e_tirc_config ttconfig = FUNC9(tt);

		FUNC4(in, 0, FUNC2(create_tir_in));
		tirc = FUNC0(create_tir_in, in, ctx);

		FUNC1(tirc, tirc, transport_domain, hp->tdn);
		FUNC1(tirc, tirc, disp_type, MLX5_TIRC_DISP_TYPE_INDIRECT);
		FUNC1(tirc, tirc, indirect_table, hp->indir_rqt.rqtn);
		FUNC8(&priv->rss_params, &ttconfig, tirc, false);

		err = FUNC5(hp->func_mdev, in,
					   FUNC2(create_tir_in), &hp->indir_tirn[tt]);
		if (err) {
			FUNC7(hp->func_mdev, "create indirect tirs failed, %d\n", err);
			goto err_destroy_tirs;
		}
	}
	return 0;

err_destroy_tirs:
	for (i = 0; i < tt; i++)
		FUNC6(hp->func_mdev, hp->indir_tirn[i]);
	return err;
}