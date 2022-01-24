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
struct mlxsw_sp_mr_ops {int (* init ) (struct mlxsw_sp*,int /*<<< orphan*/ ) ;scalar_t__ priv_size; } ;
struct mlxsw_sp_mr {int /*<<< orphan*/  stats_update_dw; int /*<<< orphan*/  priv; int /*<<< orphan*/  table_list; struct mlxsw_sp_mr_ops const* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLXSW_SP_MR_ROUTES_COUNTER_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_mr*) ; 
 struct mlxsw_sp_mr* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  mlxsw_sp_mr_stats_update ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

int FUNC7(struct mlxsw_sp *mlxsw_sp,
		     const struct mlxsw_sp_mr_ops *mr_ops)
{
	struct mlxsw_sp_mr *mr;
	unsigned long interval;
	int err;

	mr = FUNC3(sizeof(*mr) + mr_ops->priv_size, GFP_KERNEL);
	if (!mr)
		return -ENOMEM;
	mr->mr_ops = mr_ops;
	mlxsw_sp->mr = mr;
	FUNC1(&mr->table_list);

	err = mr_ops->init(mlxsw_sp, mr->priv);
	if (err)
		goto err;

	/* Create the delayed work for counter updates */
	FUNC0(&mr->stats_update_dw, mlxsw_sp_mr_stats_update);
	interval = FUNC5(MLXSW_SP_MR_ROUTES_COUNTER_UPDATE_INTERVAL);
	FUNC4(&mr->stats_update_dw, interval);
	return 0;
err:
	FUNC2(mr);
	return err;
}