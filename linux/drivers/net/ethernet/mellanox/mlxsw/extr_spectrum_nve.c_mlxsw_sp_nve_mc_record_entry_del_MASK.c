#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_nve_mc_record {scalar_t__ num_entries; TYPE_1__* ops; int /*<<< orphan*/  kvdl_index; int /*<<< orphan*/  list; struct mlxsw_sp_nve_mc_list* mc_list; } ;
struct mlxsw_sp_nve_mc_list {int /*<<< orphan*/  records_list; } ;
struct mlxsw_sp_nve_mc_entry {int valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* entry_del ) (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_nve_mc_record* FUNC3 (struct mlxsw_sp_nve_mc_record*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_nve_mc_record* FUNC4 (struct mlxsw_sp_nve_mc_record*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlxsw_sp_nve_mc_record*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_nve_mc_record*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp_nve_mc_record*,struct mlxsw_sp_nve_mc_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct mlxsw_sp_nve_mc_record *mc_record,
				 struct mlxsw_sp_nve_mc_entry *mc_entry)
{
	struct mlxsw_sp_nve_mc_list *mc_list = mc_record->mc_list;

	mc_entry->valid = false;
	mc_record->num_entries--;

	/* When the record continues to exist we only need to invalidate
	 * the requested entry
	 */
	if (mc_record->num_entries != 0) {
		FUNC6(mc_record);
		mc_record->ops->entry_del(mc_record, mc_entry);
		return;
	}

	/* If the record needs to be deleted, but it is not the first,
	 * then we need to make sure that the previous record no longer
	 * points to it. Remove deleted record from the list to reflect
	 * that and then re-add it at the end, so that it could be
	 * properly removed by the record destruction code
	 */
	if (!FUNC5(mc_record)) {
		struct mlxsw_sp_nve_mc_record *prev_record;

		prev_record = FUNC4(mc_record, list);
		FUNC1(&mc_record->list);
		FUNC6(prev_record);
		FUNC0(&mc_record->list, &mc_list->records_list);
		mc_record->ops->entry_del(mc_record, mc_entry);
		return;
	}

	/* If the first record needs to be deleted, but the list is not
	 * singular, then the second record needs to be written in the
	 * first record's address, as this address is stored as a property
	 * of the FID
	 */
	if (FUNC5(mc_record) &&
	    !FUNC2(&mc_list->records_list)) {
		struct mlxsw_sp_nve_mc_record *next_record;

		next_record = FUNC3(mc_record, list);
		FUNC11(mc_record->kvdl_index, next_record->kvdl_index);
		FUNC6(next_record);
		mc_record->ops->entry_del(mc_record, mc_entry);
		return;
	}

	/* This is the last case where the last remaining record needs to
	 * be deleted. Simply delete the entry
	 */
	mc_record->ops->entry_del(mc_record, mc_entry);
}