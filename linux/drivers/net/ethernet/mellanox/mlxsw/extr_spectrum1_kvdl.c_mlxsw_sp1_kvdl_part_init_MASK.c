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
typedef  scalar_t__ u64 ;
struct mlxsw_sp1_kvdl_part_info {int /*<<< orphan*/  alloc_size; scalar_t__ start_index; scalar_t__ end_index; int /*<<< orphan*/  resource_id; } ;
struct mlxsw_sp1_kvdl_part {int /*<<< orphan*/  info; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mlxsw_sp1_kvdl_part* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,scalar_t__*) ; 
 unsigned int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp1_kvdl_part* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mlxsw_sp1_kvdl_part_info const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp1_kvdl_part*,struct mlxsw_sp1_kvdl_part*,scalar_t__) ; 
 struct devlink* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp1_kvdl_part *
FUNC8(struct mlxsw_sp *mlxsw_sp,
			 const struct mlxsw_sp1_kvdl_part_info *info,
			 struct mlxsw_sp1_kvdl_part *part_prev)
{
	struct devlink *devlink = FUNC7(mlxsw_sp->core);
	struct mlxsw_sp1_kvdl_part *part;
	bool need_update = true;
	unsigned int nr_entries;
	size_t usage_size;
	u64 resource_size;
	int err;

	err = FUNC2(devlink, info->resource_id,
					&resource_size);
	if (err) {
		need_update = false;
		resource_size = info->end_index - info->start_index + 1;
	}

	nr_entries = FUNC3(resource_size, info->alloc_size);
	usage_size = FUNC0(nr_entries) * sizeof(unsigned long);
	part = FUNC4(sizeof(*part) + usage_size, GFP_KERNEL);
	if (!part)
		return FUNC1(-ENOMEM);

	FUNC5(&part->info, info, sizeof(part->info));

	if (need_update)
		FUNC6(part, part_prev, resource_size);
	return part;
}