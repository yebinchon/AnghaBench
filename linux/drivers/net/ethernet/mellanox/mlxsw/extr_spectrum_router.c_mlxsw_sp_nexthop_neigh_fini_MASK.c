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
struct neighbour {int dummy; } ;
struct mlxsw_sp_nexthop {struct mlxsw_sp_neigh_entry* neigh_entry; int /*<<< orphan*/  neigh_list_node; } ;
struct TYPE_2__ {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {int /*<<< orphan*/  nexthop_list; int /*<<< orphan*/  connected; int /*<<< orphan*/  nexthop_neighs_list_node; TYPE_1__ key; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_nexthop*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct neighbour*) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_nexthop *nh)
{
	struct mlxsw_sp_neigh_entry *neigh_entry = nh->neigh_entry;
	struct neighbour *n;

	if (!neigh_entry)
		return;
	n = neigh_entry->key.n;

	FUNC0(nh, true);
	FUNC1(&nh->neigh_list_node);
	nh->neigh_entry = NULL;

	/* If that is the last nexthop connected to that neigh, remove from
	 * nexthop_neighs_list
	 */
	if (FUNC2(&neigh_entry->nexthop_list))
		FUNC1(&neigh_entry->nexthop_neighs_list_node);

	if (!neigh_entry->connected && FUNC2(&neigh_entry->nexthop_list))
		FUNC3(mlxsw_sp, neigh_entry);

	FUNC4(n);
}