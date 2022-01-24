#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttc_params {int /*<<< orphan*/  ft_attr; } ;
struct mlx5e_flow_table {int /*<<< orphan*/ * t; } ;
struct mlx5e_ttc_table {struct mlx5e_flow_table ft; } ;
struct TYPE_3__ {int /*<<< orphan*/  ns; } ;
struct mlx5e_priv {TYPE_1__ fs; int /*<<< orphan*/  mdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  outer_ip_version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__ ft_field_support ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5e_ttc_table*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_flow_table*) ; 
 int FUNC6 (struct mlx5e_priv*,struct ttc_params*,struct mlx5e_ttc_table*) ; 

int FUNC7(struct mlx5e_priv *priv, struct ttc_params *params,
			   struct mlx5e_ttc_table *ttc)
{
	bool match_ipv_outer = FUNC1(priv->mdev, ft_field_support.outer_ip_version);
	struct mlx5e_flow_table *ft = &ttc->ft;
	int err;

	ft->t = FUNC3(priv->fs.ns, &params->ft_attr);
	if (FUNC0(ft->t)) {
		err = FUNC2(ft->t);
		ft->t = NULL;
		return err;
	}

	err = FUNC4(ttc, match_ipv_outer);
	if (err)
		goto err;

	err = FUNC6(priv, params, ttc);
	if (err)
		goto err;

	return 0;
err:
	FUNC5(ft);
	return err;
}