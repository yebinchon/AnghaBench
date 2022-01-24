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
struct mlxsw_sp_mr_tcam_erif_list {int /*<<< orphan*/  erif_sublists; } ;
struct mlxsw_sp_mr_erif_sublist {int /*<<< orphan*/  list; int /*<<< orphan*/  rigr2_kvdl_index; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_mr_erif_sublist* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_mr_erif_sublist*) ; 
 struct mlxsw_sp_mr_erif_sublist* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_sp_mr_erif_sublist *
FUNC5(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_mr_tcam_erif_list *erif_list)
{
	struct mlxsw_sp_mr_erif_sublist *erif_sublist;
	int err;

	erif_sublist = FUNC2(sizeof(*erif_sublist), GFP_KERNEL);
	if (!erif_sublist)
		return FUNC0(-ENOMEM);
	err = FUNC4(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR,
				  1, &erif_sublist->rigr2_kvdl_index);
	if (err) {
		FUNC1(erif_sublist);
		return FUNC0(err);
	}

	FUNC3(&erif_sublist->list, &erif_list->erif_sublists);
	return erif_sublist;
}