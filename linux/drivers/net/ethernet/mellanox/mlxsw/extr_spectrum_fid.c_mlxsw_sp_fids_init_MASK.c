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
struct mlxsw_sp_fid_family {int dummy; } ;
struct mlxsw_sp_fid_core {int /*<<< orphan*/  fid_ht; int /*<<< orphan*/  vni_ht; struct mlxsw_sp_fid_core* port_fid_mappings; struct mlxsw_sp_fid_family** fid_family_arr; } ;
struct mlxsw_sp {struct mlxsw_sp_fid_core* fid_core; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLXSW_SP_FID_TYPE_MAX ; 
 struct mlxsw_sp_fid_core* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid_core*) ; 
 struct mlxsw_sp_fid_core* FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mlxsw_sp_fid_family_arr ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_fid_family*) ; 
 int /*<<< orphan*/  mlxsw_sp_fid_ht_params ; 
 int /*<<< orphan*/  mlxsw_sp_fid_vni_ht_params ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct mlxsw_sp *mlxsw_sp)
{
	unsigned int max_ports = FUNC3(mlxsw_sp->core);
	struct mlxsw_sp_fid_core *fid_core;
	int err, i;

	fid_core = FUNC2(sizeof(*mlxsw_sp->fid_core), GFP_KERNEL);
	if (!fid_core)
		return -ENOMEM;
	mlxsw_sp->fid_core = fid_core;

	err = FUNC7(&fid_core->fid_ht, &mlxsw_sp_fid_ht_params);
	if (err)
		goto err_rhashtable_fid_init;

	err = FUNC7(&fid_core->vni_ht, &mlxsw_sp_fid_vni_ht_params);
	if (err)
		goto err_rhashtable_vni_init;

	fid_core->port_fid_mappings = FUNC0(max_ports, sizeof(unsigned int),
					      GFP_KERNEL);
	if (!fid_core->port_fid_mappings) {
		err = -ENOMEM;
		goto err_alloc_port_fid_mappings;
	}

	for (i = 0; i < MLXSW_SP_FID_TYPE_MAX; i++) {
		err = FUNC4(mlxsw_sp,
						   mlxsw_sp_fid_family_arr[i]);

		if (err)
			goto err_fid_ops_register;
	}

	return 0;

err_fid_ops_register:
	for (i--; i >= 0; i--) {
		struct mlxsw_sp_fid_family *fid_family;

		fid_family = fid_core->fid_family_arr[i];
		FUNC5(mlxsw_sp, fid_family);
	}
	FUNC1(fid_core->port_fid_mappings);
err_alloc_port_fid_mappings:
	FUNC6(&fid_core->vni_ht);
err_rhashtable_vni_init:
	FUNC6(&fid_core->fid_ht);
err_rhashtable_fid_init:
	FUNC1(fid_core);
	return err;
}