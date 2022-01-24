#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct neighbour {char* primary_key; } ;
struct TYPE_2__ {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {int /*<<< orphan*/  counter_index; scalar_t__ counter_valid; int /*<<< orphan*/  ha; int /*<<< orphan*/  rif; TYPE_1__ key; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RAUHT_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rauht ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_neigh_entry *neigh_entry,
				enum mlxsw_reg_rauht_op op)
{
	struct neighbour *n = neigh_entry->key.n;
	char rauht_pl[MLXSW_REG_RAUHT_LEN];
	const char *dip = n->primary_key;

	FUNC1(rauht_pl, op, neigh_entry->rif, neigh_entry->ha,
			      dip);
	if (neigh_entry->counter_valid)
		FUNC2(rauht_pl,
					     neigh_entry->counter_index);
	return FUNC3(mlxsw_sp->core, FUNC0(rauht), rauht_pl);
}