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
struct mlxsw_sp_nve {int /*<<< orphan*/  mc_list_ht; int /*<<< orphan*/  nve_ops_arr; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; int /*<<< orphan*/  nve_ops_arr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_nve*) ; 
 struct mlxsw_sp_nve* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_nve_mc_list_ht_params ; 
 int FUNC3 (struct mlxsw_sp*) ; 
 int FUNC4 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_nve *nve;
	int err;

	nve = FUNC1(sizeof(*mlxsw_sp->nve), GFP_KERNEL);
	if (!nve)
		return -ENOMEM;
	mlxsw_sp->nve = nve;
	nve->mlxsw_sp = mlxsw_sp;
	nve->nve_ops_arr = mlxsw_sp->nve_ops_arr;

	err = FUNC6(&nve->mc_list_ht,
			      &mlxsw_sp_nve_mc_list_ht_params);
	if (err)
		goto err_rhashtable_init;

	err = FUNC3(mlxsw_sp);
	if (err)
		goto err_nve_qos_init;

	err = FUNC2(mlxsw_sp);
	if (err)
		goto err_nve_ecn_init;

	err = FUNC4(mlxsw_sp);
	if (err)
		goto err_nve_resources_query;

	return 0;

err_nve_resources_query:
err_nve_ecn_init:
err_nve_qos_init:
	FUNC5(&nve->mc_list_ht);
err_rhashtable_init:
	mlxsw_sp->nve = NULL;
	FUNC0(nve);
	return err;
}