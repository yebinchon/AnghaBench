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
struct TYPE_4__ {int /*<<< orphan*/  lp_advertising; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTYS_LEN ; 
 int SUPPORTED_Asym_Pause ; 
 int SUPPORTED_Pause ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct ethtool_link_ksettings*) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 struct mlxsw_sx_port* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  ptys ; 

__attribute__((used)) static int
FUNC13(struct net_device *dev,
				 struct ethtool_link_ksettings *cmd)
{
	struct mlxsw_sx_port *mlxsw_sx_port = FUNC11(dev);
	struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
	char ptys_pl[MLXSW_REG_PTYS_LEN];
	u32 eth_proto_cap;
	u32 eth_proto_admin;
	u32 eth_proto_oper;
	u32 supported, advertising, lp_advertising;
	int err;

	FUNC2(ptys_pl, mlxsw_sx_port->local_port, 0, false);
	err = FUNC4(mlxsw_sx->core, FUNC0(ptys), ptys_pl);
	if (err) {
		FUNC10(dev, "Failed to get proto");
		return err;
	}
	FUNC3(ptys_pl, &eth_proto_cap,
				  &eth_proto_admin, &eth_proto_oper);

	supported = FUNC8(eth_proto_cap) |
			 FUNC7(eth_proto_cap) |
			 SUPPORTED_Pause | SUPPORTED_Asym_Pause;
	advertising = FUNC5(eth_proto_admin);
	FUNC6(FUNC12(dev),
					eth_proto_oper, cmd);

	eth_proto_oper = eth_proto_oper ? eth_proto_oper : eth_proto_cap;
	cmd->base.port = FUNC9(eth_proto_oper);
	lp_advertising = FUNC5(eth_proto_oper);

	FUNC1(cmd->link_modes.supported,
						supported);
	FUNC1(cmd->link_modes.advertising,
						advertising);
	FUNC1(cmd->link_modes.lp_advertising,
						lp_advertising);

	return 0;
}