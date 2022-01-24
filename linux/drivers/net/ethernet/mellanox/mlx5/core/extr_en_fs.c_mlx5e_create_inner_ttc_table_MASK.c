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
struct ttc_params {int /*<<< orphan*/  ft_attr; } ;
struct mlx5e_flow_table {int /*<<< orphan*/ * t; } ;
struct mlx5e_ttc_table {struct mlx5e_flow_table ft; } ;
struct TYPE_2__ {int /*<<< orphan*/  ns; } ;
struct mlx5e_priv {TYPE_1__ fs; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5e_ttc_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_flow_table*) ; 
 int FUNC5 (struct mlx5e_priv*,struct ttc_params*,struct mlx5e_ttc_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx5e_priv *priv, struct ttc_params *params,
				 struct mlx5e_ttc_table *ttc)
{
	struct mlx5e_flow_table *ft = &ttc->ft;
	int err;

	if (!FUNC6(priv->mdev))
		return 0;

	ft->t = FUNC2(priv->fs.ns, &params->ft_attr);
	if (FUNC0(ft->t)) {
		err = FUNC1(ft->t);
		ft->t = NULL;
		return err;
	}

	err = FUNC3(ttc);
	if (err)
		goto err;

	err = FUNC5(priv, params, ttc);
	if (err)
		goto err;

	return 0;

err:
	FUNC4(ft);
	return err;
}