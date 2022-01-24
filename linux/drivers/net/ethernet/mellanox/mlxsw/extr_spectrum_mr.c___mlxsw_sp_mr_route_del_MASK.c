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
struct mlxsw_sp_mr_table {int /*<<< orphan*/  route_ht; } ;
struct mlxsw_sp_mr_route {int /*<<< orphan*/  node; int /*<<< orphan*/  ht_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_mr_route*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ; 
 int /*<<< orphan*/  mlxsw_sp_mr_route_ht_params ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp_mr_table *mr_table,
				    struct mlxsw_sp_mr_route *mr_route)
{
	FUNC1(mr_route, false);
	FUNC3(mr_table, mr_route);
	FUNC4(&mr_table->route_ht, &mr_route->ht_node,
			       mlxsw_sp_mr_route_ht_params);
	FUNC0(&mr_route->node);
	FUNC2(mr_table, mr_route);
}