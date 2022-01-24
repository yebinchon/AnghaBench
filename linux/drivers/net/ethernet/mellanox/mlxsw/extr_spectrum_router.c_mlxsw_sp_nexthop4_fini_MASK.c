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
struct mlxsw_sp_nexthop {int /*<<< orphan*/  router_list_node; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp *mlxsw_sp,
				   struct mlxsw_sp_nexthop *nh)
{
	FUNC1(mlxsw_sp, nh);
	FUNC0(&nh->router_list_node);
	FUNC2(mlxsw_sp, nh);
	FUNC3(mlxsw_sp, nh);
}