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
struct net_device {int dummy; } ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; int /*<<< orphan*/  local_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PPLR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_port*,int) ; 
 struct mlxsw_sp_port* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  pplr ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, bool enable)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC4(dev);
	char pplr_pl[MLXSW_REG_PPLR_LEN];
	int err;

	if (FUNC5(dev))
		FUNC3(mlxsw_sp_port, false);

	FUNC1(pplr_pl, mlxsw_sp_port->local_port, enable);
	err = FUNC2(mlxsw_sp_port->mlxsw_sp->core, FUNC0(pplr),
			      pplr_pl);

	if (FUNC5(dev))
		FUNC3(mlxsw_sp_port, true);

	return err;
}