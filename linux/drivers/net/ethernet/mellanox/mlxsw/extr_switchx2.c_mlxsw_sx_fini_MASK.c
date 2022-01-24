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
struct mlxsw_sx {int dummy; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sx* FUNC0 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sx*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_core *mlxsw_core)
{
	struct mlxsw_sx *mlxsw_sx = FUNC0(mlxsw_core);

	FUNC2(mlxsw_sx);
	FUNC1(mlxsw_sx);
}