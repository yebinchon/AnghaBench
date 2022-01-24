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
struct mlxsw_sp_acl_bf {int /*<<< orphan*/  lock; int /*<<< orphan*/ * refcnt; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_PEABFE_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_acl_bf*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*) ; 
 unsigned int FUNC7 (struct mlxsw_sp_acl_bf*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  peabfe ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct mlxsw_sp *mlxsw_sp,
			  struct mlxsw_sp_acl_bf *bf,
			  struct mlxsw_sp_acl_atcam_region *aregion,
			  unsigned int erp_bank,
			  struct mlxsw_sp_acl_atcam_entry *aentry)
{
	unsigned int rule_index;
	char *peabfe_pl;
	u16 bf_index;

	FUNC8(&bf->lock);

	bf_index = FUNC6(bf, aregion, aentry);
	rule_index = FUNC7(bf, erp_bank,
							  bf_index);

	if (FUNC10(&bf->refcnt[rule_index])) {
		peabfe_pl = FUNC2(MLXSW_REG_PEABFE_LEN, GFP_KERNEL);
		if (!peabfe_pl)
			goto unlock;

		FUNC3(peabfe_pl);
		FUNC4(peabfe_pl, 0, 0, erp_bank, bf_index);
		FUNC5(mlxsw_sp->core, FUNC0(peabfe), peabfe_pl);
		FUNC1(peabfe_pl);
	}

unlock:
	FUNC9(&bf->lock);
}