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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_nve_config {int learning_en; int /*<<< orphan*/  ul_tb_id; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; TYPE_1__* nve; } ;
struct TYPE_2__ {int /*<<< orphan*/  ul_rif_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_TNGCR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct mlxsw_sp*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct mlxsw_sp_nve_config const*) ; 
 int FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tngcr ; 

__attribute__((used)) static int
FUNC7(struct mlxsw_sp *mlxsw_sp,
			       const struct mlxsw_sp_nve_config *config)
{
	char tngcr_pl[MLXSW_REG_TNGCR_LEN];
	u16 ul_rif_index;
	int err;

	err = FUNC5(mlxsw_sp, config->ul_tb_id,
					 &ul_rif_index);
	if (err)
		return err;
	mlxsw_sp->nve->ul_rif_index = ul_rif_index;

	err = FUNC3(mlxsw_sp, config->learning_en);
	if (err)
		goto err_vxlan_learning_set;

	FUNC4(tngcr_pl, config);
	FUNC1(tngcr_pl, ul_rif_index);

	err = FUNC2(mlxsw_sp->core, FUNC0(tngcr), tngcr_pl);
	if (err)
		goto err_tngcr_write;

	return 0;

err_tngcr_write:
	FUNC3(mlxsw_sp, false);
err_vxlan_learning_set:
	FUNC6(mlxsw_sp, ul_rif_index);
	return err;
}