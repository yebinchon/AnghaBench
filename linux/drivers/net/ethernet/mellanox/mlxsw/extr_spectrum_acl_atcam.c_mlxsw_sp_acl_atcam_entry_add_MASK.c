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
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int /*<<< orphan*/  cregion; } ;
struct mlxsw_sp_acl_atcam_entry {int /*<<< orphan*/  centry; } ;
struct mlxsw_sp_acl_atcam_chunk {int /*<<< orphan*/  cchunk; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*,struct mlxsw_sp_acl_rule_info*) ; 
 int FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mlxsw_sp_acl_rule_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*) ; 

int FUNC3(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_acl_atcam_region *aregion,
				 struct mlxsw_sp_acl_atcam_chunk *achunk,
				 struct mlxsw_sp_acl_atcam_entry *aentry,
				 struct mlxsw_sp_acl_rule_info *rulei)
{
	int err;

	err = FUNC0(mlxsw_sp, aregion, aentry, rulei);
	if (!err)
		return 0;

	/* It is possible we failed to add the rule to the A-TCAM due to
	 * exceeded number of masks. Try to spill into C-TCAM.
	 */
	FUNC2(mlxsw_sp, aregion);
	err = FUNC1(mlxsw_sp, &aregion->cregion,
					   &achunk->cchunk, &aentry->centry,
					   rulei, true);
	if (!err)
		return 0;

	return err;
}