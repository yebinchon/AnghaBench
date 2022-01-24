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
struct ttc_params {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;
struct TYPE_5__ {TYPE_1__* t; } ;
struct TYPE_6__ {TYPE_2__ ft; } ;
struct mlx5e_hairpin {int /*<<< orphan*/  indir_rqt; TYPE_3__ ttc; int /*<<< orphan*/  num_channels; struct mlx5e_priv* func_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_priv*,struct ttc_params*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5e_hairpin*) ; 
 int FUNC3 (struct mlx5e_hairpin*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_hairpin*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_hairpin*,struct ttc_params*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlx5e_hairpin *hp)
{
	struct mlx5e_priv *priv = hp->func_priv;
	struct ttc_params ttc_params;
	int err;

	err = FUNC2(hp);
	if (err)
		return err;

	err = FUNC3(hp);
	if (err)
		goto err_create_indirect_tirs;

	FUNC5(hp, &ttc_params);
	err = FUNC0(priv, &ttc_params, &hp->ttc);
	if (err)
		goto err_create_ttc_table;

	FUNC6(priv->netdev, "add hairpin: using %d channels rss ttc table id %x\n",
		   hp->num_channels, hp->ttc.ft.t->id);

	return 0;

err_create_ttc_table:
	FUNC4(hp);
err_create_indirect_tirs:
	FUNC1(priv, &hp->indir_rqt);

	return err;
}