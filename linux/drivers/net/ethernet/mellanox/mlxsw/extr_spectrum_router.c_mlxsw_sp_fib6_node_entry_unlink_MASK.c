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
struct mlxsw_sp_fib6_entry {int /*<<< orphan*/  common; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fib6_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_fib6_entry *fib6_entry)
{
	FUNC1(mlxsw_sp, &fib6_entry->common);
	FUNC0(fib6_entry);
}