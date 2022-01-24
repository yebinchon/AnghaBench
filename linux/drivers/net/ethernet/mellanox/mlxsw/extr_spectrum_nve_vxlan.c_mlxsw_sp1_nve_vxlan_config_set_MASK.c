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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_nve_config {int /*<<< orphan*/  learning_en; int /*<<< orphan*/  ul_tb_id; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_TNGCR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct mlxsw_sp_nve_config const*) ; 
 int FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tngcr ; 

__attribute__((used)) static int
FUNC6(struct mlxsw_sp *mlxsw_sp,
			       const struct mlxsw_sp_nve_config *config)
{
	char tngcr_pl[MLXSW_REG_TNGCR_LEN];
	u16 ul_vr_id;
	int err;

	err = FUNC5(mlxsw_sp, config->ul_tb_id,
					  &ul_vr_id);
	if (err)
		return err;

	FUNC4(tngcr_pl, config);
	FUNC1(tngcr_pl, config->learning_en);
	FUNC2(tngcr_pl, ul_vr_id);

	return FUNC3(mlxsw_sp->core, FUNC0(tngcr), tngcr_pl);
}