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
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mid {struct mlxsw_sp_mid* ports_in_mid; int /*<<< orphan*/  list; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_mid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlxsw_sp_mid*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_mid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_mid*) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp_port *mlxsw_sp_port,
					 struct mlxsw_sp_mid *mid)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	int err = 0;

	FUNC1(mlxsw_sp_port->local_port, mid->ports_in_mid);
	if (FUNC0(mid->ports_in_mid,
			 FUNC4(mlxsw_sp->core))) {
		err = FUNC5(mlxsw_sp, mid);
		FUNC3(&mid->list);
		FUNC2(mid->ports_in_mid);
		FUNC2(mid);
	}
	return err;
}