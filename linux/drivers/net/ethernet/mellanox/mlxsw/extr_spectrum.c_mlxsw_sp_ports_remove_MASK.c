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
struct mlxsw_sp {int /*<<< orphan*/  ports; int /*<<< orphan*/  port_to_module; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp *mlxsw_sp)
{
	int i;

	for (i = 1; i < FUNC1(mlxsw_sp->core); i++)
		if (FUNC3(mlxsw_sp, i))
			FUNC4(mlxsw_sp, i);
	FUNC2(mlxsw_sp);
	FUNC0(mlxsw_sp->port_to_module);
	FUNC0(mlxsw_sp->ports);
}