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
struct mlxsw_sp {TYPE_1__* bridge; } ;
struct TYPE_2__ {int /*<<< orphan*/  bridges_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*) ; 

void FUNC4(struct mlxsw_sp *mlxsw_sp)
{
	FUNC3(mlxsw_sp);
	FUNC0(!FUNC2(&mlxsw_sp->bridge->bridges_list));
	FUNC1(mlxsw_sp->bridge);
}