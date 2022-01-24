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
struct mlxsw_sp1_kvdl_part_info {int dummy; } ;
struct mlxsw_sp1_kvdl_part {int dummy; } ;
struct mlxsw_sp1_kvdl {struct mlxsw_sp1_kvdl_part** parts; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp1_kvdl_part*) ; 
 int MLXSW_SP1_KVDL_PARTS_INFO_LEN ; 
 int FUNC1 (struct mlxsw_sp1_kvdl_part*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp1_kvdl_part*) ; 
 struct mlxsw_sp1_kvdl_part* FUNC3 (struct mlxsw_sp*,struct mlxsw_sp1_kvdl_part_info const*,struct mlxsw_sp1_kvdl_part*) ; 
 struct mlxsw_sp1_kvdl_part_info* mlxsw_sp1_kvdl_parts_info ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
				     struct mlxsw_sp1_kvdl *kvdl)
{
	const struct mlxsw_sp1_kvdl_part_info *info;
	struct mlxsw_sp1_kvdl_part *part_prev = NULL;
	int err, i;

	for (i = 0; i < MLXSW_SP1_KVDL_PARTS_INFO_LEN; i++) {
		info = &mlxsw_sp1_kvdl_parts_info[i];
		kvdl->parts[i] = FUNC3(mlxsw_sp, info,
							  part_prev);
		if (FUNC0(kvdl->parts[i])) {
			err = FUNC1(kvdl->parts[i]);
			goto err_kvdl_part_init;
		}
		part_prev = kvdl->parts[i];
	}
	return 0;

err_kvdl_part_init:
	for (i--; i >= 0; i--)
		FUNC2(kvdl->parts[i]);
	return err;
}