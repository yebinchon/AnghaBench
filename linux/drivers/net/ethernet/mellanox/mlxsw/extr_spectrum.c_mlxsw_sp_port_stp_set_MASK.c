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
typedef  scalar_t__ u16 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_spms_state { ____Placeholder_mlxsw_reg_spms_state } mlxsw_reg_spms_state ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SPMS_LEN ; 
 int MLXSW_REG_SPMS_STATE_DISCARDING ; 
 int MLXSW_REG_SPMS_STATE_FORWARDING ; 
 scalar_t__ VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  spms ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp_port *mlxsw_sp_port,
				 bool enable)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	enum mlxsw_reg_spms_state spms_state;
	char *spms_pl;
	u16 vid;
	int err;

	spms_state = enable ? MLXSW_REG_SPMS_STATE_FORWARDING :
			      MLXSW_REG_SPMS_STATE_DISCARDING;

	spms_pl = FUNC2(MLXSW_REG_SPMS_LEN, GFP_KERNEL);
	if (!spms_pl)
		return -ENOMEM;
	FUNC3(spms_pl, mlxsw_sp_port->local_port);

	for (vid = 0; vid < VLAN_N_VID; vid++)
		FUNC4(spms_pl, vid, spms_state);

	err = FUNC5(mlxsw_sp->core, FUNC0(spms), spms_pl);
	FUNC1(spms_pl);
	return err;
}