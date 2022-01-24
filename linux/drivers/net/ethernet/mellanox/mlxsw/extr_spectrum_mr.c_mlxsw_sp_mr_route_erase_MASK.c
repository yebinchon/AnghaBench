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
struct mlxsw_sp_mr_route {int /*<<< orphan*/  route_priv; } ;
struct mlxsw_sp_mr {int /*<<< orphan*/  priv; TYPE_1__* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* route_destroy ) (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp_mr_table *mr_table,
				    struct mlxsw_sp_mr_route *mr_route)
{
	struct mlxsw_sp *mlxsw_sp = mr_table->mlxsw_sp;
	struct mlxsw_sp_mr *mr = mlxsw_sp->mr;

	mr->mr_ops->route_destroy(mlxsw_sp, mr->priv, mr_route->route_priv);
	FUNC0(mr_route->route_priv);
}