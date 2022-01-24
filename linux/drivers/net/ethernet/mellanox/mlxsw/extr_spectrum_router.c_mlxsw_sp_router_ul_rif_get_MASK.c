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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_rif {int /*<<< orphan*/  rif_index; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct mlxsw_sp_rif*) ; 
 int FUNC2 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif* FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct mlxsw_sp *mlxsw_sp, u32 ul_tb_id,
			       u16 *ul_rif_index)
{
	struct mlxsw_sp_rif *ul_rif;

	FUNC0();

	ul_rif = FUNC3(mlxsw_sp, ul_tb_id, NULL);
	if (FUNC1(ul_rif))
		return FUNC2(ul_rif);
	*ul_rif_index = ul_rif->rif_index;

	return 0;
}