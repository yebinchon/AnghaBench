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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; } ;
struct dcb_ieee_app_prio_map {int dummy; } ;
struct dcb_ieee_app_dscp_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_QPTS_TRUST_STATE_DSCP ; 
 int /*<<< orphan*/  MLXSW_REG_QPTS_TRUST_STATE_PCP ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,struct dcb_ieee_app_dscp_map*) ; 
 int FUNC2 (struct mlxsw_sp_port*,struct dcb_ieee_app_prio_map*) ; 
 int FUNC3 (struct mlxsw_sp_port*,struct dcb_ieee_app_dscp_map*) ; 
 int FUNC4 (struct mlxsw_sp_port*,struct dcb_ieee_app_prio_map*) ; 
 int FUNC5 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp_port *mlxsw_sp_port)
{
	struct dcb_ieee_app_prio_map prio_map;
	struct dcb_ieee_app_dscp_map dscp_map;
	u8 default_prio;
	bool have_dscp;
	int err;

	default_prio = FUNC0(mlxsw_sp_port);
	have_dscp = FUNC2(mlxsw_sp_port,
							&prio_map);

	FUNC1(mlxsw_sp_port, default_prio,
					    &dscp_map);
	err = FUNC3(mlxsw_sp_port,
						 &dscp_map);
	if (err) {
		FUNC6(mlxsw_sp_port->dev, "Couldn't configure priority map\n");
		return err;
	}

	err = FUNC4(mlxsw_sp_port,
						 &prio_map);
	if (err) {
		FUNC6(mlxsw_sp_port->dev, "Couldn't configure DSCP rewrite map\n");
		return err;
	}

	if (!have_dscp) {
		err = FUNC5(mlxsw_sp_port,
					MLXSW_REG_QPTS_TRUST_STATE_PCP);
		if (err)
			FUNC6(mlxsw_sp_port->dev, "Couldn't switch to trust L2\n");
		return err;
	}

	err = FUNC5(mlxsw_sp_port,
					     MLXSW_REG_QPTS_TRUST_STATE_DSCP);
	if (err) {
		/* A failure to set trust DSCP means that the QPDPM and QPDSM
		 * maps installed above are not in effect. And since we are here
		 * attempting to set trust DSCP, we couldn't have attempted to
		 * switch trust to PCP. Thus no cleanup is necessary.
		 */
		FUNC6(mlxsw_sp_port->dev, "Couldn't switch to trust L3\n");
		return err;
	}

	return 0;
}