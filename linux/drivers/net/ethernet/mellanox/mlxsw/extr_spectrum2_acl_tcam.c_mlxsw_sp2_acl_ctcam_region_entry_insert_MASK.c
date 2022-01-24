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
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_ctcam_region {int dummy; } ;
struct mlxsw_sp_acl_ctcam_entry {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {struct mlxsw_sp_acl_erp_mask* erp_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_erp_mask*) ; 
 int FUNC1 (struct mlxsw_sp_acl_erp_mask*) ; 
 struct mlxsw_sp_acl_erp_mask* FUNC2 (struct mlxsw_sp_acl_atcam_region*,char const*,int) ; 
 struct mlxsw_sp_acl_atcam_entry* FUNC3 (struct mlxsw_sp_acl_ctcam_entry*) ; 
 struct mlxsw_sp_acl_atcam_region* FUNC4 (struct mlxsw_sp_acl_ctcam_region*) ; 

__attribute__((used)) static int
FUNC5(struct mlxsw_sp_acl_ctcam_region *cregion,
					struct mlxsw_sp_acl_ctcam_entry *centry,
					const char *mask)
{
	struct mlxsw_sp_acl_atcam_region *aregion;
	struct mlxsw_sp_acl_atcam_entry *aentry;
	struct mlxsw_sp_acl_erp_mask *erp_mask;

	aregion = FUNC4(cregion);
	aentry = FUNC3(centry);

	erp_mask = FUNC2(aregion, mask, true);
	if (FUNC0(erp_mask))
		return FUNC1(erp_mask);
	aentry->erp_mask = erp_mask;

	return 0;
}