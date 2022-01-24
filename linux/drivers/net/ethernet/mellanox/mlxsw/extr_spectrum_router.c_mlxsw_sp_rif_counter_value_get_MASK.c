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
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RICNT_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RICNT_OPCODE_NOP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_sp_rif*,int) ; 
 unsigned int* FUNC5 (struct mlxsw_sp_rif*,int) ; 
 int /*<<< orphan*/  ricnt ; 

int FUNC6(struct mlxsw_sp *mlxsw_sp,
				   struct mlxsw_sp_rif *rif,
				   enum mlxsw_sp_rif_counter_dir dir, u64 *cnt)
{
	char ricnt_pl[MLXSW_REG_RICNT_LEN];
	unsigned int *p_counter_index;
	bool valid;
	int err;

	valid = FUNC4(rif, dir);
	if (!valid)
		return -EINVAL;

	p_counter_index = FUNC5(rif, dir);
	if (!p_counter_index)
		return -EINVAL;
	FUNC3(ricnt_pl, *p_counter_index,
			     MLXSW_REG_RICNT_OPCODE_NOP);
	err = FUNC1(mlxsw_sp->core, FUNC0(ricnt), ricnt_pl);
	if (err)
		return err;
	*cnt = FUNC2(ricnt_pl);
	return 0;
}