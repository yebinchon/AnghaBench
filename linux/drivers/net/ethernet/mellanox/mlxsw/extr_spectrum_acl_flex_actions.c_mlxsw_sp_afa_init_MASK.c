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
struct mlxsw_sp {int /*<<< orphan*/  afa; int /*<<< orphan*/  afa_ops; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_ACTIONS_PER_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp*) ; 

int FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	mlxsw_sp->afa = FUNC2(FUNC0(mlxsw_sp->core,
							    ACL_ACTIONS_PER_SET),
					 mlxsw_sp->afa_ops, mlxsw_sp);
	return FUNC1(mlxsw_sp->afa);
}