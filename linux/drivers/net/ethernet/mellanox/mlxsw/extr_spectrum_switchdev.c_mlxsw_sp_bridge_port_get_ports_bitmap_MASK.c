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
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; } ;
struct mlxsw_sp_bridge_port {int lag_id; int /*<<< orphan*/  system_port; int /*<<< orphan*/  lagged; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LAG_MEMBERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_port* FUNC1 (struct mlxsw_sp*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp *mlxsw_sp,
				      struct mlxsw_sp_bridge_port *bridge_port,
				      unsigned long *ports_bitmap)
{
	struct mlxsw_sp_port *mlxsw_sp_port;
	u64 max_lag_members, i;
	int lag_id;

	if (!bridge_port->lagged) {
		FUNC2(bridge_port->system_port, ports_bitmap);
	} else {
		max_lag_members = FUNC0(mlxsw_sp->core,
						     MAX_LAG_MEMBERS);
		lag_id = bridge_port->lag_id;
		for (i = 0; i < max_lag_members; i++) {
			mlxsw_sp_port = FUNC1(mlxsw_sp,
								 lag_id, i);
			if (mlxsw_sp_port)
				FUNC2(mlxsw_sp_port->local_port,
					ports_bitmap);
		}
	}
}