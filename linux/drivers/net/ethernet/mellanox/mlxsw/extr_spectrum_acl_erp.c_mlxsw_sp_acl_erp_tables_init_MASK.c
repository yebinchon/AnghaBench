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
struct mlxsw_sp_acl_erp_core {int /*<<< orphan*/  erp_tables; int /*<<< orphan*/  bf; void* num_erp_banks; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_ERPT_BANKS ; 
 int /*<<< orphan*/  ACL_MAX_ERPT_BANK_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_ERP_GENALLOC_OFFSET ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  gen_pool_best_fit ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*,void*) ; 
 int FUNC10 (struct mlxsw_sp*,struct mlxsw_sp_acl_erp_core*) ; 

__attribute__((used)) static int FUNC11(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_acl_erp_core *erp_core)
{
	unsigned int erpt_bank_size;
	int err;

	if (!FUNC2(mlxsw_sp->core, ACL_MAX_ERPT_BANK_SIZE) ||
	    !FUNC2(mlxsw_sp->core, ACL_MAX_ERPT_BANKS))
		return -EIO;
	erpt_bank_size = FUNC1(mlxsw_sp->core,
					    ACL_MAX_ERPT_BANK_SIZE);
	erp_core->num_erp_banks = FUNC1(mlxsw_sp->core,
						     ACL_MAX_ERPT_BANKS);

	erp_core->erp_tables = FUNC5(0, -1);
	if (!erp_core->erp_tables)
		return -ENOMEM;
	FUNC7(erp_core->erp_tables, gen_pool_best_fit, NULL);

	err = FUNC4(erp_core->erp_tables,
			   MLXSW_SP_ACL_ERP_GENALLOC_OFFSET, erpt_bank_size,
			   -1);
	if (err)
		goto err_gen_pool_add;

	erp_core->bf = FUNC9(mlxsw_sp, erp_core->num_erp_banks);
	if (FUNC0(erp_core->bf)) {
		err = FUNC3(erp_core->bf);
		goto err_bf_init;
	}

	/* Different regions require masks of different sizes */
	err = FUNC10(mlxsw_sp, erp_core);
	if (err)
		goto err_erp_tables_sizes_query;

	return 0;

err_erp_tables_sizes_query:
	FUNC8(erp_core->bf);
err_bf_init:
err_gen_pool_add:
	FUNC6(erp_core->erp_tables);
	return err;
}