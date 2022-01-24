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
struct mlxsw_sp_acl_ctcam_region {int dummy; } ;
struct mlxsw_sp_acl_ctcam_entry {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {int /*<<< orphan*/  erp_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_atcam_region*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_acl_atcam_entry* FUNC1 (struct mlxsw_sp_acl_ctcam_entry*) ; 
 struct mlxsw_sp_acl_atcam_region* FUNC2 (struct mlxsw_sp_acl_ctcam_region*) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp_acl_ctcam_region *cregion,
					struct mlxsw_sp_acl_ctcam_entry *centry)
{
	struct mlxsw_sp_acl_atcam_region *aregion;
	struct mlxsw_sp_acl_atcam_entry *aentry;

	aregion = FUNC2(cregion);
	aentry = FUNC1(centry);

	FUNC0(aregion, aentry->erp_mask);
}