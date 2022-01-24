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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RICNT_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RICNT_OPCODE_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ricnt ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp,
				      unsigned int counter_index)
{
	char ricnt_pl[MLXSW_REG_RICNT_LEN];

	FUNC1(ricnt_pl, counter_index,
			     MLXSW_REG_RICNT_OPCODE_CLEAR);
	return FUNC2(mlxsw_sp->core, FUNC0(ricnt), ricnt_pl);
}