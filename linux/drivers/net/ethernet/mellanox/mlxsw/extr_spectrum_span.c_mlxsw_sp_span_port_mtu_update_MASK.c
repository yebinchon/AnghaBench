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
struct mlxsw_sp_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_SBIB_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sbib ; 

int FUNC6(struct mlxsw_sp_port *port, u16 mtu)
{
	struct mlxsw_sp *mlxsw_sp = port->mlxsw_sp;
	char sbib_pl[MLXSW_REG_SBIB_LEN];
	int err;

	/* If port is egress mirrored, the shared buffer size should be
	 * updated according to the mtu value
	 */
	if (FUNC3(port)) {
		u32 buffsize = FUNC4(mlxsw_sp, mtu);

		FUNC1(sbib_pl, port->local_port, buffsize);
		err = FUNC2(mlxsw_sp->core, FUNC0(sbib), sbib_pl);
		if (err) {
			FUNC5(port->dev, "Could not update shared buffer for mirroring\n");
			return err;
		}
	}

	return 0;
}