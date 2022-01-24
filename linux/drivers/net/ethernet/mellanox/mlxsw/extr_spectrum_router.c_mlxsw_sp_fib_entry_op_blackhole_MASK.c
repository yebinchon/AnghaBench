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
struct mlxsw_sp_fib_entry {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_ralue_trap_action { ____Placeholder_mlxsw_reg_ralue_trap_action } mlxsw_reg_ralue_trap_action ;
typedef  enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RALUE_LEN ; 
 int MLXSW_REG_RALUE_TRAP_ACTION_DISCARD_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct mlxsw_sp_fib_entry*,int) ; 
 int /*<<< orphan*/  ralue ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
					   struct mlxsw_sp_fib_entry *fib_entry,
					   enum mlxsw_reg_ralue_op op)
{
	enum mlxsw_reg_ralue_trap_action trap_action;
	char ralue_pl[MLXSW_REG_RALUE_LEN];

	trap_action = MLXSW_REG_RALUE_TRAP_ACTION_DISCARD_ERROR;
	FUNC3(ralue_pl, fib_entry, op);
	FUNC1(ralue_pl, trap_action, 0, 0);
	return FUNC2(mlxsw_sp->core, FUNC0(ralue), ralue_pl);
}