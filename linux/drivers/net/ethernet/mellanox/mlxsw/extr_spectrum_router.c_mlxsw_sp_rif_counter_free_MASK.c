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
struct mlxsw_sp_rif {int /*<<< orphan*/  rif_index; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_COUNTER_SUB_POOL_RIF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_rif*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_rif*,int,int) ; 
 unsigned int* FUNC5 (struct mlxsw_sp_rif*,int) ; 

void FUNC6(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_rif *rif,
			       enum mlxsw_sp_rif_counter_dir dir)
{
	unsigned int *p_counter_index;

	if (!FUNC3(rif, dir))
		return;

	p_counter_index = FUNC5(rif, dir);
	if (FUNC0(!p_counter_index))
		return;
	FUNC2(mlxsw_sp, rif->rif_index,
				  *p_counter_index, false, dir);
	FUNC1(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_RIF,
			      *p_counter_index);
	FUNC4(rif, dir, false);
}