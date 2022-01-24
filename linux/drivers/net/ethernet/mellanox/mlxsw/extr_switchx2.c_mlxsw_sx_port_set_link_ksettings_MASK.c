#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mlxsw_sx_port {int /*<<< orphan*/  local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int /*<<< orphan*/  core; } ;
struct TYPE_4__ {int speed; scalar_t__ autoneg; } ;
struct TYPE_3__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTYS_LEN ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct mlxsw_sx_port*,int) ; 
 int FUNC7 (struct mlxsw_sx_port*,int*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 struct mlxsw_sx_port* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  ptys ; 

__attribute__((used)) static int
FUNC12(struct net_device *dev,
				 const struct ethtool_link_ksettings *cmd)
{
	struct mlxsw_sx_port *mlxsw_sx_port = FUNC11(dev);
	struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
	char ptys_pl[MLXSW_REG_PTYS_LEN];
	u32 speed;
	u32 eth_proto_new;
	u32 eth_proto_cap;
	u32 eth_proto_admin;
	u32 advertising;
	bool is_up;
	int err;

	speed = cmd->base.speed;

	FUNC1(&advertising,
						cmd->link_modes.advertising);

	eth_proto_new = cmd->base.autoneg == AUTONEG_ENABLE ?
		FUNC8(advertising) :
		FUNC9(speed);

	FUNC2(ptys_pl, mlxsw_sx_port->local_port, 0, false);
	err = FUNC4(mlxsw_sx->core, FUNC0(ptys), ptys_pl);
	if (err) {
		FUNC10(dev, "Failed to get proto");
		return err;
	}
	FUNC3(ptys_pl, &eth_proto_cap, &eth_proto_admin,
				  NULL);

	eth_proto_new = eth_proto_new & eth_proto_cap;
	if (!eth_proto_new) {
		FUNC10(dev, "Not supported proto admin requested");
		return -EINVAL;
	}
	if (eth_proto_new == eth_proto_admin)
		return 0;

	FUNC2(ptys_pl, mlxsw_sx_port->local_port,
				eth_proto_new, true);
	err = FUNC5(mlxsw_sx->core, FUNC0(ptys), ptys_pl);
	if (err) {
		FUNC10(dev, "Failed to set proto admin");
		return err;
	}

	err = FUNC7(mlxsw_sx_port, &is_up);
	if (err) {
		FUNC10(dev, "Failed to get oper status");
		return err;
	}
	if (!is_up)
		return 0;

	err = FUNC6(mlxsw_sx_port, false);
	if (err) {
		FUNC10(dev, "Failed to set admin status");
		return err;
	}

	err = FUNC6(mlxsw_sx_port, true);
	if (err) {
		FUNC10(dev, "Failed to set admin status");
		return err;
	}

	return 0;
}