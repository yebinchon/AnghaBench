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
struct mlxsw_sp_nve_mc_record {int proto; int /*<<< orphan*/  list; struct mlxsw_sp_nve_mc_list* mc_list; struct mlxsw_sp* mlxsw_sp; int /*<<< orphan*/  ops; int /*<<< orphan*/  kvdl_index; } ;
struct mlxsw_sp_nve_mc_list {int /*<<< orphan*/  records_list; } ;
struct mlxsw_sp {TYPE_1__* nve; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
struct TYPE_2__ {unsigned int* num_max_mc_entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_nve_mc_record* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_nve_mc_record*) ; 
 struct mlxsw_sp_nve_mc_record* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mlxsw_sp_nve_mc_record_ops_arr ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_nve_mc_record*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct mlxsw_sp_nve_mc_record *
FUNC6(struct mlxsw_sp *mlxsw_sp,
			      struct mlxsw_sp_nve_mc_list *mc_list,
			      enum mlxsw_sp_l3proto proto)
{
	unsigned int num_max_entries = mlxsw_sp->nve->num_max_mc_entries[proto];
	struct mlxsw_sp_nve_mc_record *mc_record;
	int err;

	mc_record = FUNC2(FUNC5(mc_record, entries, num_max_entries),
			    GFP_KERNEL);
	if (!mc_record)
		return FUNC0(-ENOMEM);

	err = FUNC4(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT, 1,
				  &mc_record->kvdl_index);
	if (err)
		goto err_kvdl_alloc;

	mc_record->ops = mlxsw_sp_nve_mc_record_ops_arr[proto];
	mc_record->mlxsw_sp = mlxsw_sp;
	mc_record->mc_list = mc_list;
	mc_record->proto = proto;
	FUNC3(&mc_record->list, &mc_list->records_list);

	return mc_record;

err_kvdl_alloc:
	FUNC1(mc_record);
	return FUNC0(err);
}