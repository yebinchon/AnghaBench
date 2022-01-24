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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_nexthop {int /*<<< orphan*/  counter_index; scalar_t__ counter_valid; struct mlxsw_sp_neigh_entry* neigh_entry; } ;
struct mlxsw_sp_neigh_entry {int /*<<< orphan*/  ha; int /*<<< orphan*/  rif; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RATR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY ; 
 int /*<<< orphan*/  MLXSW_REG_RATR_TYPE_ETHERNET ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ratr ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp, u32 adj_index,
				     struct mlxsw_sp_nexthop *nh)
{
	struct mlxsw_sp_neigh_entry *neigh_entry = nh->neigh_entry;
	char ratr_pl[MLXSW_REG_RATR_LEN];

	FUNC3(ratr_pl, MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY,
			    true, MLXSW_REG_RATR_TYPE_ETHERNET,
			    adj_index, neigh_entry->rif);
	FUNC2(ratr_pl, neigh_entry->ha);
	if (nh->counter_valid)
		FUNC1(ratr_pl, nh->counter_index, true);
	else
		FUNC1(ratr_pl, 0, false);

	return FUNC4(mlxsw_sp->core, FUNC0(ratr), ratr_pl);
}