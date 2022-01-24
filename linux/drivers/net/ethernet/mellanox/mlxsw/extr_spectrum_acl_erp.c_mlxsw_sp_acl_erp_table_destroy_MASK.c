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
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  objagg; int /*<<< orphan*/  objagg_lock; int /*<<< orphan*/  atcam_erps_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_erp_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp_acl_erp_table *erp_table)
{
	FUNC0(!FUNC2(&erp_table->atcam_erps_list));
	FUNC3(&erp_table->objagg_lock);
	FUNC4(erp_table->objagg);
	FUNC1(erp_table);
}