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
typedef  int u16 ;
struct mlxsw_sib_port {int /*<<< orphan*/  local_port; struct mlxsw_sib* mlxsw_sib; } ;
struct mlxsw_sib {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PMTU_LEN ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pmtu ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sib_port *mlxsw_sib_port,
				  u16 mtu)
{
	struct mlxsw_sib *mlxsw_sib = mlxsw_sib_port->mlxsw_sib;
	char pmtu_pl[MLXSW_REG_PMTU_LEN];
	int max_mtu;
	int err;

	FUNC2(pmtu_pl, mlxsw_sib_port->local_port, 0);
	err = FUNC3(mlxsw_sib->core, FUNC0(pmtu), pmtu_pl);
	if (err)
		return err;
	max_mtu = FUNC1(pmtu_pl);

	if (mtu > max_mtu)
		return -EINVAL;

	FUNC2(pmtu_pl, mlxsw_sib_port->local_port, mtu);
	return FUNC4(mlxsw_sib->core, FUNC0(pmtu), pmtu_pl);
}