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
struct neighbour {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  rif_index; } ;
struct mlxsw_sp_neigh_entry {int /*<<< orphan*/  rif_list_node; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct mlxsw_sp_neigh_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ; 
 struct mlxsw_sp_neigh_entry* FUNC3 (struct mlxsw_sp*,struct neighbour*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_neigh_entry*) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ; 
 struct mlxsw_sp_rif* FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_neigh_entry *
FUNC7(struct mlxsw_sp *mlxsw_sp, struct neighbour *n)
{
	struct mlxsw_sp_neigh_entry *neigh_entry;
	struct mlxsw_sp_rif *rif;
	int err;

	rif = FUNC6(mlxsw_sp, n->dev);
	if (!rif)
		return FUNC0(-EINVAL);

	neigh_entry = FUNC3(mlxsw_sp, n, rif->rif_index);
	if (!neigh_entry)
		return FUNC0(-ENOMEM);

	err = FUNC5(mlxsw_sp, neigh_entry);
	if (err)
		goto err_neigh_entry_insert;

	FUNC2(mlxsw_sp, neigh_entry);
	FUNC1(&neigh_entry->rif_list_node, &rif->neigh_list);

	return neigh_entry;

err_neigh_entry_insert:
	FUNC4(neigh_entry);
	return FUNC0(err);
}