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
struct objagg_obj {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  objagg_lock; int /*<<< orphan*/  objagg; } ;
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_erp_key {int ctcam; int /*<<< orphan*/  mask; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;

/* Variables and functions */
 struct mlxsw_sp_acl_erp_mask* FUNC0 (struct objagg_obj*) ; 
 scalar_t__ FUNC1 (struct objagg_obj*) ; 
 int /*<<< orphan*/  MLXSW_REG_PTCEX_FLEX_KEY_BLOCKS_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct objagg_obj* FUNC5 (int /*<<< orphan*/ ,struct mlxsw_sp_acl_erp_key*) ; 

struct mlxsw_sp_acl_erp_mask *
FUNC6(struct mlxsw_sp_acl_atcam_region *aregion,
			  const char *mask, bool ctcam)
{
	struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
	struct mlxsw_sp_acl_erp_key key;
	struct objagg_obj *objagg_obj;

	FUNC2(key.mask, mask, MLXSW_REG_PTCEX_FLEX_KEY_BLOCKS_LEN);
	key.ctcam = ctcam;
	FUNC3(&erp_table->objagg_lock);
	objagg_obj = FUNC5(erp_table->objagg, &key);
	FUNC4(&erp_table->objagg_lock);
	if (FUNC1(objagg_obj))
		return FUNC0(objagg_obj);
	return (struct mlxsw_sp_acl_erp_mask *) objagg_obj;
}