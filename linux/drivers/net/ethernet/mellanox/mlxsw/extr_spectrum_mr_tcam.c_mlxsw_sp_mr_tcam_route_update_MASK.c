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
struct mlxsw_sp_mr_tcam_erif_list {int dummy; } ;
struct mlxsw_sp_mr_tcam_route {int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  irif_index; int /*<<< orphan*/  action; struct mlxsw_sp_mr_tcam_erif_list erif_list; struct mlxsw_afa_block* afa_block; int /*<<< orphan*/  key; int /*<<< orphan*/  priv; int /*<<< orphan*/  counter_index; } ;
struct mlxsw_sp_mr_tcam_ops {int (* route_update ) (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_afa_block*) ;} ;
struct mlxsw_sp_mr_route_info {int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  irif_index; int /*<<< orphan*/  route_action; } ;
struct mlxsw_sp {struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_afa_block*) ; 
 int FUNC1 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_mr_tcam_erif_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_mr_tcam_erif_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_mr_tcam_erif_list*,struct mlxsw_sp_mr_tcam_erif_list*) ; 
 struct mlxsw_afa_block* FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp_mr_tcam_erif_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_afa_block*) ; 
 int FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_mr_tcam_erif_list*,struct mlxsw_sp_mr_route_info*) ; 
 int FUNC8 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_afa_block*) ; 

__attribute__((used)) static int
FUNC9(struct mlxsw_sp *mlxsw_sp, void *route_priv,
			      struct mlxsw_sp_mr_route_info *route_info)
{
	const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
	struct mlxsw_sp_mr_tcam_route *route = route_priv;
	struct mlxsw_sp_mr_tcam_erif_list erif_list;
	struct mlxsw_afa_block *afa_block;
	int err;

	/* Create a new erif_list */
	FUNC3(&erif_list);
	err = FUNC7(mlxsw_sp, &erif_list, route_info);
	if (err)
		goto err_erif_populate;

	/* Create the flexible action block pointing to the new erif_list */
	afa_block = FUNC5(mlxsw_sp,
						      route_info->route_action,
						      route_info->irif_index,
						      route->counter_index,
						      route_info->min_mtu,
						      &erif_list);
	if (FUNC0(afa_block)) {
		err = FUNC1(afa_block);
		goto err_afa_block_create;
	}

	/* Update the TCAM route entry */
	err = ops->route_update(mlxsw_sp, route->priv, &route->key, afa_block);
	if (err)
		goto err_route_write;

	FUNC6(route->afa_block);
	FUNC2(mlxsw_sp, &route->erif_list);
	route->afa_block = afa_block;
	FUNC4(&route->erif_list, &erif_list);
	route->action = route_info->route_action;
	route->irif_index = route_info->irif_index;
	route->min_mtu = route_info->min_mtu;
	return 0;

err_route_write:
	FUNC6(afa_block);
err_afa_block_create:
err_erif_populate:
	FUNC2(mlxsw_sp, &erif_list);
	return err;
}