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
struct mlxsw_sp_mr_erif_sublist {int /*<<< orphan*/  rigr2_kvdl_index; int /*<<< orphan*/  list; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_mr_erif_sublist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_mr_erif_sublist *erif_sublist)
{
	FUNC1(&erif_sublist->list);
	FUNC2(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR,
			   1, erif_sublist->rigr2_kvdl_index);
	FUNC0(erif_sublist);
}