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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_mr_tcam_route {int /*<<< orphan*/  min_mtu; struct mlxsw_afa_block* afa_block; int /*<<< orphan*/  key; int /*<<< orphan*/  priv; int /*<<< orphan*/  erif_list; int /*<<< orphan*/  counter_index; int /*<<< orphan*/  irif_index; int /*<<< orphan*/  action; } ;
struct mlxsw_sp_mr_tcam_ops {int (* route_update ) (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_afa_block*) ;} ;
struct mlxsw_sp {struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_afa_block*) ; 
 int FUNC1 (struct mlxsw_afa_block*) ; 
 struct mlxsw_afa_block* FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_afa_block*) ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_afa_block*) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp,
						 void *route_priv, u16 min_mtu)
{
	const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
	struct mlxsw_sp_mr_tcam_route *route = route_priv;
	struct mlxsw_afa_block *afa_block;
	int err;

	/* Create a new flexible action block */
	afa_block = FUNC2(mlxsw_sp,
						      route->action,
						      route->irif_index,
						      route->counter_index,
						      min_mtu,
						      &route->erif_list);
	if (FUNC0(afa_block))
		return FUNC1(afa_block);

	/* Update the TCAM route entry */
	err = ops->route_update(mlxsw_sp, route->priv, &route->key, afa_block);
	if (err)
		goto err;

	/* Delete the old one */
	FUNC3(route->afa_block);
	route->afa_block = afa_block;
	route->min_mtu = min_mtu;
	return 0;
err:
	FUNC3(afa_block);
	return err;
}