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
typedef  enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;

/* Variables and functions */
#define  MLXSW_REG_RALUE_OP_WRITE_DELETE 129 
#define  MLXSW_REG_RALUE_OP_WRITE_WRITE 128 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fib_entry*) ; 
 void FUNC1 (struct mlxsw_sp_fib_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fib_entry*) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp_fib_entry *fib_entry,
				   enum mlxsw_reg_ralue_op op, int err)
{
	switch (op) {
	case MLXSW_REG_RALUE_OP_WRITE_DELETE:
		return FUNC1(fib_entry);
	case MLXSW_REG_RALUE_OP_WRITE_WRITE:
		if (err)
			return;
		if (FUNC2(fib_entry))
			FUNC0(fib_entry);
		else
			FUNC1(fib_entry);
		return;
	default:
		return;
	}
}