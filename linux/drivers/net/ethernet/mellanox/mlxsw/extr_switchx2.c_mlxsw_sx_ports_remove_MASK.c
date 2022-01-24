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
struct mlxsw_sx {int /*<<< orphan*/  ports; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlxsw_sx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sx*,int) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sx *mlxsw_sx)
{
	int i;

	for (i = 1; i < FUNC1(mlxsw_sx->core); i++)
		if (FUNC2(mlxsw_sx, i))
			FUNC3(mlxsw_sx, i);
	FUNC0(mlxsw_sx->ports);
}