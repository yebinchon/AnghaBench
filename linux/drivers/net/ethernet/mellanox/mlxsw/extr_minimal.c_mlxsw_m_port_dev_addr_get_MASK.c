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
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct mlxsw_m_port {scalar_t__ module; struct net_device* dev; struct mlxsw_m* mlxsw_m; } ;
struct mlxsw_m {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PPAD_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ppad ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_m_port *mlxsw_m_port)
{
	struct mlxsw_m *mlxsw_m = mlxsw_m_port->mlxsw_m;
	struct net_device *dev = mlxsw_m_port->dev;
	char ppad_pl[MLXSW_REG_PPAD_LEN];
	int err;

	FUNC2(ppad_pl, false, 0);
	err = FUNC3(mlxsw_m->core, FUNC0(ppad), ppad_pl);
	if (err)
		return err;
	FUNC1(ppad_pl, dev->dev_addr);
	/* The last byte value in base mac address is guaranteed
	 * to be such it does not overflow when adding local_port
	 * value.
	 */
	dev->dev_addr[ETH_ALEN - 1] += mlxsw_m_port->module + 1;
	return 0;
}