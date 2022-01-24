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
struct mlxsw_sp_nve_mc_list {int /*<<< orphan*/  records_list; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp *mlxsw_sp,
			 struct mlxsw_sp_nve_mc_list *mc_list)
{
	if (!FUNC0(&mc_list->records_list))
		return;
	FUNC1(mlxsw_sp, mc_list);
}