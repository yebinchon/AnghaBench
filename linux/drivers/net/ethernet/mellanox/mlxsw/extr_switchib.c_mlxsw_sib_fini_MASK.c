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
struct mlxsw_sib {int dummy; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sib* FUNC0 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sib*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sib*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_core *mlxsw_core)
{
	struct mlxsw_sib *mlxsw_sib = FUNC0(mlxsw_core);

	FUNC2(mlxsw_sib);
	FUNC1(mlxsw_sib);
}