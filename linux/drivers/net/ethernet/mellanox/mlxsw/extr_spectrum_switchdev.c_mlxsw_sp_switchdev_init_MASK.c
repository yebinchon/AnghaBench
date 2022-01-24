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
struct mlxsw_sp_bridge {int /*<<< orphan*/ * bridge_8021d_ops; int /*<<< orphan*/ * bridge_8021q_ops; int /*<<< orphan*/  bridges_list; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {struct mlxsw_sp_bridge* bridge; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_bridge* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_bridge_8021d_ops ; 
 int /*<<< orphan*/  mlxsw_sp_bridge_8021q_ops ; 
 int FUNC2 (struct mlxsw_sp*) ; 

int FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_bridge *bridge;

	bridge = FUNC1(sizeof(*mlxsw_sp->bridge), GFP_KERNEL);
	if (!bridge)
		return -ENOMEM;
	mlxsw_sp->bridge = bridge;
	bridge->mlxsw_sp = mlxsw_sp;

	FUNC0(&mlxsw_sp->bridge->bridges_list);

	bridge->bridge_8021q_ops = &mlxsw_sp_bridge_8021q_ops;
	bridge->bridge_8021d_ops = &mlxsw_sp_bridge_8021d_ops;

	return FUNC2(mlxsw_sp);
}