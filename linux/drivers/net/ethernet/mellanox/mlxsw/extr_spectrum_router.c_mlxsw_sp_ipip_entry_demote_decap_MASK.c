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
struct mlxsw_sp_ipip_entry {struct mlxsw_sp_fib_entry* decap_fib_entry; } ;
struct mlxsw_sp_fib_entry {int /*<<< orphan*/  type; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_FIB_ENTRY_TYPE_TRAP ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_ipip_entry *ipip_entry)
{
	struct mlxsw_sp_fib_entry *fib_entry = ipip_entry->decap_fib_entry;

	FUNC0(mlxsw_sp, fib_entry);
	fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_TRAP;

	FUNC1(mlxsw_sp, fib_entry);
}