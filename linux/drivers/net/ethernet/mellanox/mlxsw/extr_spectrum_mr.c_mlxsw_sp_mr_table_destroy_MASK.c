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
struct mlxsw_sp_mr_table {int /*<<< orphan*/  route_ht; int /*<<< orphan*/  catchall_route_priv; int /*<<< orphan*/  node; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mr {int /*<<< orphan*/  priv; TYPE_1__* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* route_destroy ) (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_mr_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_mr_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct mlxsw_sp_mr_table *mr_table)
{
	struct mlxsw_sp *mlxsw_sp = mr_table->mlxsw_sp;
	struct mlxsw_sp_mr *mr = mlxsw_sp->mr;

	FUNC0(!FUNC3(mr_table));
	FUNC2(&mr_table->node);
	mr->mr_ops->route_destroy(mlxsw_sp, mr->priv,
				  &mr_table->catchall_route_priv);
	FUNC4(&mr_table->route_ht);
	FUNC1(mr_table);
}