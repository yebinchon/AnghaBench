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
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  num_atcam_erps; int /*<<< orphan*/  atcam_erps_list; } ;
struct mlxsw_sp_acl_erp_key {int dummy; } ;
struct mlxsw_sp_acl_erp {int /*<<< orphan*/  id; int /*<<< orphan*/  list; int /*<<< orphan*/  key; struct mlxsw_sp_acl_erp_table* erp_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_acl_erp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_erp*) ; 
 struct mlxsw_sp_acl_erp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mlxsw_sp_acl_erp_key*,int) ; 
 int FUNC6 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_sp_acl_erp *
FUNC9(struct mlxsw_sp_acl_erp_table *erp_table,
				struct mlxsw_sp_acl_erp_key *key)
{
	struct mlxsw_sp_acl_erp *erp;
	int err;

	erp = FUNC2(sizeof(*erp), GFP_KERNEL);
	if (!erp)
		return FUNC0(-ENOMEM);

	err = FUNC6(erp_table, &erp->id);
	if (err)
		goto err_erp_id_get;

	FUNC5(&erp->key, key, sizeof(*key));
	FUNC3(&erp->list, &erp_table->atcam_erps_list);
	erp_table->num_atcam_erps++;
	erp->erp_table = erp_table;

	err = FUNC8(erp_table, &erp->key);
	if (err)
		goto err_master_mask_set;

	return erp;

err_master_mask_set:
	erp_table->num_atcam_erps--;
	FUNC4(&erp->list);
	FUNC7(erp_table, erp->id);
err_erp_id_get:
	FUNC1(erp);
	return FUNC0(err);
}