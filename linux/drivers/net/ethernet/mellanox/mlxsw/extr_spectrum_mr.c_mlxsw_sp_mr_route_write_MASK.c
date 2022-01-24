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
struct mlxsw_sp_mr_table {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mr_route_info {int dummy; } ;
struct mlxsw_sp_mr_route_params {int /*<<< orphan*/  prio; struct mlxsw_sp_mr_route_info value; int /*<<< orphan*/  key; } ;
struct mlxsw_sp_mr_route {int /*<<< orphan*/  route_priv; int /*<<< orphan*/  key; } ;
struct mlxsw_sp_mr {TYPE_1__* mr_ops; int /*<<< orphan*/  priv; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int (* route_create ) (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp_mr_route_params*) ;int (* route_update ) (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_mr_route_info*) ;int /*<<< orphan*/  route_priv_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*,struct mlxsw_sp_mr_route_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_mr_route_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_mr_route*) ; 
 int FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp_mr_route_params*) ; 
 int FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_mr_route_info*) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp_mr_table *mr_table,
				   struct mlxsw_sp_mr_route *mr_route,
				   bool replace)
{
	struct mlxsw_sp *mlxsw_sp = mr_table->mlxsw_sp;
	struct mlxsw_sp_mr_route_info route_info;
	struct mlxsw_sp_mr *mr = mlxsw_sp->mr;
	int err;

	err = FUNC2(mr_table, mr_route, &route_info);
	if (err)
		return err;

	if (!replace) {
		struct mlxsw_sp_mr_route_params route_params;

		mr_route->route_priv = FUNC1(mr->mr_ops->route_priv_size,
					       GFP_KERNEL);
		if (!mr_route->route_priv) {
			err = -ENOMEM;
			goto out;
		}

		route_params.key = mr_route->key;
		route_params.value = route_info;
		route_params.prio = FUNC4(mr_route);
		err = mr->mr_ops->route_create(mlxsw_sp, mr->priv,
					       mr_route->route_priv,
					       &route_params);
		if (err)
			FUNC0(mr_route->route_priv);
	} else {
		err = mr->mr_ops->route_update(mlxsw_sp, mr_route->route_priv,
					       &route_info);
	}
out:
	FUNC3(&route_info);
	return err;
}