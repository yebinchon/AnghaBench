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
struct mlx5e_arfs_tables {TYPE_1__* arfs_tables; } ;
struct TYPE_4__ {int /*<<< orphan*/  ns; struct mlx5e_arfs_tables arfs; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
struct mlx5e_flow_table {int /*<<< orphan*/ * t; scalar_t__ num_groups; } ;
struct mlx5_flow_table_attr {int /*<<< orphan*/  prio; int /*<<< orphan*/  level; int /*<<< orphan*/  max_fte; } ;
typedef  enum arfs_type { ____Placeholder_arfs_type } arfs_type ;
struct TYPE_3__ {struct mlx5e_flow_table ft; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5E_ARFS_FT_LEVEL ; 
 int /*<<< orphan*/  MLX5E_ARFS_TABLE_SIZE ; 
 int /*<<< orphan*/  MLX5E_NIC_PRIO ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5e_priv*,int) ; 
 int FUNC3 (struct mlx5e_flow_table*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct mlx5_flow_table_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_flow_table*) ; 

__attribute__((used)) static int FUNC6(struct mlx5e_priv *priv,
			     enum arfs_type type)
{
	struct mlx5e_arfs_tables *arfs = &priv->fs.arfs;
	struct mlx5e_flow_table *ft = &arfs->arfs_tables[type].ft;
	struct mlx5_flow_table_attr ft_attr = {};
	int err;

	ft->num_groups = 0;

	ft_attr.max_fte = MLX5E_ARFS_TABLE_SIZE;
	ft_attr.level = MLX5E_ARFS_FT_LEVEL;
	ft_attr.prio = MLX5E_NIC_PRIO;

	ft->t = FUNC4(priv->fs.ns, &ft_attr);
	if (FUNC0(ft->t)) {
		err = FUNC1(ft->t);
		ft->t = NULL;
		return err;
	}

	err = FUNC3(ft, type);
	if (err)
		goto err;

	err = FUNC2(priv, type);
	if (err)
		goto err;

	return 0;
err:
	FUNC5(ft);
	return err;
}