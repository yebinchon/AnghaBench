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
struct TYPE_4__ {struct mlxsw_sp_fib_node* fib_node; } ;
struct mlxsw_sp_fib4_entry {TYPE_2__ common; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct fib_entry_notifier_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ aborted; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_fib4_entry*) ; 
 struct mlxsw_sp_fib4_entry* FUNC2 (struct mlxsw_sp*,struct fib_entry_notifier_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_fib4_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp *mlxsw_sp,
				     struct fib_entry_notifier_info *fen_info)
{
	struct mlxsw_sp_fib4_entry *fib4_entry;
	struct mlxsw_sp_fib_node *fib_node;

	if (mlxsw_sp->router->aborted)
		return;

	fib4_entry = FUNC2(mlxsw_sp, fen_info);
	if (FUNC0(!fib4_entry))
		return;
	fib_node = fib4_entry->common.fib_node;

	FUNC3(mlxsw_sp, fib4_entry);
	FUNC1(mlxsw_sp, fib4_entry);
	FUNC4(mlxsw_sp, fib_node);
}