#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_fib_node {int dummy; } ;
struct TYPE_3__ {struct mlxsw_sp_fib_node* fib_node; } ;
struct mlxsw_sp_fib6_entry {TYPE_1__ common; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 TYPE_2__ common ; 
 struct mlxsw_sp_fib6_entry* FUNC0 (struct mlxsw_sp_fib6_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_fib6_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_fib6_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_fib6_entry *fib6_entry,
					bool replace)
{
	struct mlxsw_sp_fib_node *fib_node = fib6_entry->common.fib_node;
	struct mlxsw_sp_fib6_entry *replaced;

	if (!replace)
		return;

	replaced = FUNC0(fib6_entry, common.list);

	FUNC2(mlxsw_sp, replaced);
	FUNC1(mlxsw_sp, replaced);
	FUNC3(mlxsw_sp, fib_node);
}