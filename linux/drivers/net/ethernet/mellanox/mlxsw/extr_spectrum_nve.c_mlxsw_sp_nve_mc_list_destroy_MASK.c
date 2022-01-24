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
struct mlxsw_sp_nve_mc_list {int /*<<< orphan*/  records_list; int /*<<< orphan*/  ht_node; } ;
struct mlxsw_sp_nve {int /*<<< orphan*/  mc_list_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_nve_mc_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_nve_mc_list_ht_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp *mlxsw_sp,
					 struct mlxsw_sp_nve_mc_list *mc_list)
{
	struct mlxsw_sp_nve *nve = mlxsw_sp->nve;

	FUNC3(&nve->mc_list_ht, &mc_list->ht_node,
			       mlxsw_sp_nve_mc_list_ht_params);
	FUNC0(!FUNC2(&mc_list->records_list));
	FUNC1(mc_list);
}