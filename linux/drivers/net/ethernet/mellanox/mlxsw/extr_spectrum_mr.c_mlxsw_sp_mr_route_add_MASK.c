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
struct mr_mfc {int dummy; } ;
struct mlxsw_sp_mr_table {int /*<<< orphan*/  route_ht; int /*<<< orphan*/  route_list; TYPE_3__* mlxsw_sp; TYPE_1__* ops; } ;
struct mlxsw_sp_mr_route {int /*<<< orphan*/  node; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  route_priv; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {TYPE_2__* bus_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* is_route_valid ) (struct mlxsw_sp_mr_table*,struct mr_mfc*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct mlxsw_sp_mr_route*) ; 
 int FUNC1 (struct mlxsw_sp_mr_route*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_mr_route*) ; 
 struct mlxsw_sp_mr_route* FUNC7 (struct mlxsw_sp_mr_table*,struct mr_mfc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ; 
 int /*<<< orphan*/  mlxsw_sp_mr_route_ht_params ; 
 int FUNC9 (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_mr_route* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp_mr_table*,struct mr_mfc*) ; 

int FUNC14(struct mlxsw_sp_mr_table *mr_table,
			  struct mr_mfc *mfc, bool replace)
{
	struct mlxsw_sp_mr_route *mr_orig_route = NULL;
	struct mlxsw_sp_mr_route *mr_route;
	int err;

	if (!mr_table->ops->is_route_valid(mr_table, mfc))
		return -EINVAL;

	/* Create a new route */
	mr_route = FUNC7(mr_table, mfc);
	if (FUNC0(mr_route))
		return FUNC1(mr_route);

	/* Find any route with a matching key */
	mr_orig_route = FUNC11(&mr_table->route_ht,
					       &mr_route->key,
					       mlxsw_sp_mr_route_ht_params);
	if (replace) {
		/* On replace case, make the route point to the new route_priv.
		 */
		if (FUNC2(!mr_orig_route)) {
			err = -ENOENT;
			goto err_no_orig_route;
		}
		mr_route->route_priv = mr_orig_route->route_priv;
	} else if (mr_orig_route) {
		/* On non replace case, if another route with the same key was
		 * found, abort, as duplicate routes are used for proxy routes.
		 */
		FUNC3(mr_table->mlxsw_sp->bus_info->dev,
			 "Offloading proxy routes is not supported.\n");
		err = -EINVAL;
		goto err_duplicate_route;
	}

	/* Put it in the table data-structures */
	FUNC4(&mr_route->node, &mr_table->route_list);
	err = FUNC10(&mr_table->route_ht,
				     &mr_route->ht_node,
				     mlxsw_sp_mr_route_ht_params);
	if (err)
		goto err_rhashtable_insert;

	/* Write the route to the hardware */
	err = FUNC9(mr_table, mr_route, replace);
	if (err)
		goto err_mr_route_write;

	/* Destroy the original route */
	if (replace) {
		FUNC12(&mr_table->route_ht,
				       &mr_orig_route->ht_node,
				       mlxsw_sp_mr_route_ht_params);
		FUNC5(&mr_orig_route->node);
		FUNC8(mr_table, mr_orig_route);
	}

	FUNC6(mr_route);
	return 0;

err_mr_route_write:
	FUNC12(&mr_table->route_ht, &mr_route->ht_node,
			       mlxsw_sp_mr_route_ht_params);
err_rhashtable_insert:
	FUNC5(&mr_route->node);
err_no_orig_route:
err_duplicate_route:
	FUNC8(mr_table, mr_route);
	return err;
}