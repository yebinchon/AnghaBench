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
struct mlxsw_sp_fib_node {int /*<<< orphan*/  entry_list; } ;
struct mlxsw_sp_fib_entry {struct mlxsw_sp_fib_node* fib_node; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;

/* Variables and functions */
 int MLXSW_REG_RALUE_OP_WRITE_DELETE ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_fib_entry* FUNC1 (struct mlxsw_sp_fib_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fib_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_fib_node*,struct mlxsw_sp_fib_entry*) ; 

__attribute__((used)) static void FUNC6(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_fib_entry *fib_entry)
{
	struct mlxsw_sp_fib_node *fib_node = fib_entry->fib_node;

	if (!FUNC5(fib_node, fib_entry))
		return;

	/* Promote the next entry by overwriting the deleted entry */
	if (!FUNC0(&fib_node->entry_list)) {
		struct mlxsw_sp_fib_entry *n = FUNC1(fib_entry, list);
		enum mlxsw_reg_ralue_op op = MLXSW_REG_RALUE_OP_WRITE_DELETE;

		FUNC4(mlxsw_sp, n);
		FUNC3(fib_entry, op, 0);
		return;
	}

	FUNC2(mlxsw_sp, fib_entry);
}