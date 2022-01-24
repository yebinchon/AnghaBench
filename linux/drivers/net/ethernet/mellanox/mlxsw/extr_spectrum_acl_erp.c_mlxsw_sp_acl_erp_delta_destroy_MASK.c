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
struct mlxsw_sp_acl_erp_table {int dummy; } ;
struct mlxsw_sp_acl_erp_delta {int /*<<< orphan*/  key; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_erp_delta*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_erp_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *priv, void *delta_priv)
{
	struct mlxsw_sp_acl_erp_delta *delta = delta_priv;
	struct mlxsw_sp_acl_atcam_region *aregion = priv;
	struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;

	FUNC2(erp_table, &delta->key);
	FUNC1(erp_table);
	FUNC0(delta);
}