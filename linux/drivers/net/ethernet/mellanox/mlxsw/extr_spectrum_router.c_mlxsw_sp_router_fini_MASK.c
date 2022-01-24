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
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int /*<<< orphan*/  inetaddr_nb; int /*<<< orphan*/  inet6addr_nb; int /*<<< orphan*/  nexthop_ht; int /*<<< orphan*/  nexthop_group_ht; int /*<<< orphan*/  netevent_nb; int /*<<< orphan*/  fib_nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct mlxsw_sp *mlxsw_sp)
{
	FUNC9(&mlxsw_sp->router->fib_nb);
	FUNC12(&mlxsw_sp->router->netevent_nb);
	FUNC5(mlxsw_sp);
	FUNC7(mlxsw_sp);
	FUNC4(mlxsw_sp);
	FUNC3(mlxsw_sp);
	FUNC8(&mlxsw_sp->router->nexthop_group_ht);
	FUNC8(&mlxsw_sp->router->nexthop_ht);
	FUNC2(mlxsw_sp);
	FUNC6(mlxsw_sp);
	FUNC0(mlxsw_sp);
	FUNC10(&mlxsw_sp->router->inet6addr_nb);
	FUNC11(&mlxsw_sp->router->inetaddr_nb);
	FUNC1(mlxsw_sp->router);
}