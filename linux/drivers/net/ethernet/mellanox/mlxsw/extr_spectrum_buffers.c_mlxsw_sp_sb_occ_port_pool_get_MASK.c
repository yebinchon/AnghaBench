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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  max; int /*<<< orphan*/  cur; } ;
struct mlxsw_sp_sb_pm {TYPE_1__ occ; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_core_port {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_port* FUNC0 (struct mlxsw_core_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_sb_pm* FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlxsw_core_port *mlxsw_core_port,
				  unsigned int sb_index, u16 pool_index,
				  u32 *p_cur, u32 *p_max)
{
	struct mlxsw_sp_port *mlxsw_sp_port =
			FUNC0(mlxsw_core_port);
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	u8 local_port = mlxsw_sp_port->local_port;
	struct mlxsw_sp_sb_pm *pm = FUNC2(mlxsw_sp, local_port,
						       pool_index);

	*p_cur = FUNC1(mlxsw_sp, pm->occ.cur);
	*p_max = FUNC1(mlxsw_sp, pm->occ.max);
	return 0;
}