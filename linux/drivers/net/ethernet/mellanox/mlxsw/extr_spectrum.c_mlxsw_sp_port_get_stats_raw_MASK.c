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
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ppcnt ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int grp,
				       int prio, char *ppcnt_pl)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC3(dev);
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;

	FUNC1(ppcnt_pl, mlxsw_sp_port->local_port, grp, prio);
	return FUNC2(mlxsw_sp->core, FUNC0(ppcnt), ppcnt_pl);
}