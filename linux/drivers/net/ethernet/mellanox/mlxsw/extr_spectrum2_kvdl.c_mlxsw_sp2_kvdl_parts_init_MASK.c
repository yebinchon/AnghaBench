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
struct mlxsw_sp2_kvdl_part_info {int dummy; } ;
struct mlxsw_sp2_kvdl {int /*<<< orphan*/ * parts; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_SP2_KVDL_PARTS_INFO_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp2_kvdl_part_info const*) ; 
 struct mlxsw_sp2_kvdl_part_info* mlxsw_sp2_kvdl_parts_info ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
				     struct mlxsw_sp2_kvdl *kvdl)
{
	const struct mlxsw_sp2_kvdl_part_info *info;
	int i;
	int err;

	for (i = 0; i < MLXSW_SP2_KVDL_PARTS_INFO_LEN; i++) {
		info = &mlxsw_sp2_kvdl_parts_info[i];
		kvdl->parts[i] = FUNC3(mlxsw_sp, info);
		if (FUNC0(kvdl->parts[i])) {
			err = FUNC1(kvdl->parts[i]);
			goto err_kvdl_part_init;
		}
	}
	return 0;

err_kvdl_part_init:
	for (i--; i >= 0; i--)
		FUNC2(kvdl->parts[i]);
	return err;
}