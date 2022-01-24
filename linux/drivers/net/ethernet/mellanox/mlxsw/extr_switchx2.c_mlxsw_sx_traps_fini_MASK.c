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
struct mlxsw_sx {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sx*) ; 
 int /*<<< orphan*/ * mlxsw_sx_listener ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sx *mlxsw_sx)
{
	int i;

	for (i = 0; i < FUNC0(mlxsw_sx_listener); i++) {
		FUNC1(mlxsw_sx->core,
					   &mlxsw_sx_listener[i],
					   mlxsw_sx);
	}
}