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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_acl_erp_table {int dummy; } ;
struct mlxsw_sp_acl_erp_key {scalar_t__ mask; } ;
struct mlxsw_sp_acl_erp {int /*<<< orphan*/  key; struct mlxsw_sp_acl_erp_table* erp_table; int /*<<< orphan*/  mask_bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_acl_erp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_TCAM_MASK_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl_erp*) ; 
 struct mlxsw_sp_acl_erp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mlxsw_sp_acl_erp_key*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_erp_table*) ; 
 int FUNC6 (struct mlxsw_sp_acl_erp_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mlxsw_sp_acl_erp_table*) ; 

__attribute__((used)) static struct mlxsw_sp_acl_erp *
FUNC10(struct mlxsw_sp_acl_erp_table *erp_table,
				   struct mlxsw_sp_acl_erp_key *key)
{
	struct mlxsw_sp_acl_erp *erp;
	int err;

	erp = FUNC3(sizeof(*erp), GFP_KERNEL);
	if (!erp)
		return FUNC0(-ENOMEM);

	FUNC4(&erp->key, key, sizeof(*key));
	FUNC1(erp->mask_bitmap, (u32 *) key->mask,
			  MLXSW_SP_ACL_TCAM_MASK_LEN);

	err = FUNC6(erp_table);
	if (err)
		goto err_erp_ctcam_inc;

	erp->erp_table = erp_table;

	err = FUNC8(erp_table, &erp->key);
	if (err)
		goto err_master_mask_set;

	err = FUNC9(erp_table);
	if (err)
		goto err_erp_region_ctcam_enable;

	return erp;

err_erp_region_ctcam_enable:
	FUNC7(erp_table, &erp->key);
err_master_mask_set:
	FUNC5(erp_table);
err_erp_ctcam_inc:
	FUNC2(erp);
	return FUNC0(err);
}