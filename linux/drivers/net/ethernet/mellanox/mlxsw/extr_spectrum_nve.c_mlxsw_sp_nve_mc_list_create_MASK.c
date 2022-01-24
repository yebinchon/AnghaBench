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
struct mlxsw_sp_nve_mc_list_key {int dummy; } ;
struct mlxsw_sp_nve_mc_list {int /*<<< orphan*/  ht_node; struct mlxsw_sp_nve_mc_list_key key; int /*<<< orphan*/  records_list; } ;
struct mlxsw_sp_nve {int /*<<< orphan*/  mc_list_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_nve_mc_list* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_nve_mc_list*) ; 
 struct mlxsw_sp_nve_mc_list* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_nve_mc_list_ht_params ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_nve_mc_list *
FUNC5(struct mlxsw_sp *mlxsw_sp,
			    const struct mlxsw_sp_nve_mc_list_key *key)
{
	struct mlxsw_sp_nve *nve = mlxsw_sp->nve;
	struct mlxsw_sp_nve_mc_list *mc_list;
	int err;

	mc_list = FUNC3(sizeof(*mc_list), GFP_KERNEL);
	if (!mc_list)
		return FUNC0(-ENOMEM);

	FUNC1(&mc_list->records_list);
	mc_list->key = *key;

	err = FUNC4(&nve->mc_list_ht, &mc_list->ht_node,
				     mlxsw_sp_nve_mc_list_ht_params);
	if (err)
		goto err_rhashtable_insert;

	return mc_list;

err_rhashtable_insert:
	FUNC2(mc_list);
	return FUNC0(err);
}