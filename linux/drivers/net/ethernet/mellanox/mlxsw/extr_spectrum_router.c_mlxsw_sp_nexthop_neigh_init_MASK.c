#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct neighbour {int nud_state; int dead; int /*<<< orphan*/  lock; int /*<<< orphan*/  nexthop_list; int /*<<< orphan*/  nexthop_neighs_list_node; } ;
struct mlxsw_sp_nexthop {int /*<<< orphan*/  neigh_list_node; struct neighbour* neigh_entry; TYPE_2__* rif; int /*<<< orphan*/  gw_addr; TYPE_1__* nh_grp; } ;
struct mlxsw_sp_neigh_entry {int nud_state; int dead; int /*<<< orphan*/  lock; int /*<<< orphan*/  nexthop_list; int /*<<< orphan*/  nexthop_neighs_list_node; } ;
struct mlxsw_sp {TYPE_3__* router; } ;
struct TYPE_6__ {int /*<<< orphan*/  nexthop_neighs_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  neigh_tbl; int /*<<< orphan*/  gateway; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int NUD_VALID ; 
 int FUNC1 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_nexthop*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC5 (struct mlxsw_sp*,struct neighbour*) ; 
 struct neighbour* FUNC6 (struct mlxsw_sp*,struct neighbour*) ; 
 struct neighbour* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*,int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_nexthop *nh)
{
	struct mlxsw_sp_neigh_entry *neigh_entry;
	struct neighbour *n;
	u8 nud_state, dead;
	int err;

	if (!nh->nh_grp->gateway || nh->neigh_entry)
		return 0;

	/* Take a reference of neigh here ensuring that neigh would
	 * not be destructed before the nexthop entry is finished.
	 * The reference is taken either in neigh_lookup() or
	 * in neigh_create() in case n is not found.
	 */
	n = FUNC9(nh->nh_grp->neigh_tbl, &nh->gw_addr, nh->rif->dev);
	if (!n) {
		n = FUNC7(nh->nh_grp->neigh_tbl, &nh->gw_addr,
				 nh->rif->dev);
		if (FUNC0(n))
			return FUNC1(n);
		FUNC8(n, NULL);
	}
	neigh_entry = FUNC6(mlxsw_sp, n);
	if (!neigh_entry) {
		neigh_entry = FUNC5(mlxsw_sp, n);
		if (FUNC0(neigh_entry)) {
			err = -EINVAL;
			goto err_neigh_entry_create;
		}
	}

	/* If that is the first nexthop connected to that neigh, add to
	 * nexthop_neighs_list
	 */
	if (FUNC4(&neigh_entry->nexthop_list))
		FUNC3(&neigh_entry->nexthop_neighs_list_node,
			      &mlxsw_sp->router->nexthop_neighs_list);

	nh->neigh_entry = neigh_entry;
	FUNC3(&nh->neigh_list_node, &neigh_entry->nexthop_list);
	FUNC11(&n->lock);
	nud_state = n->nud_state;
	dead = n->dead;
	FUNC12(&n->lock);
	FUNC2(nh, !(nud_state & NUD_VALID && !dead));

	return 0;

err_neigh_entry_create:
	FUNC10(n);
	return err;
}