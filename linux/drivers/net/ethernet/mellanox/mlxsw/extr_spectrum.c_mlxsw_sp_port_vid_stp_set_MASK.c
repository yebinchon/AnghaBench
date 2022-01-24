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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_spms_state { ____Placeholder_mlxsw_reg_spms_state } mlxsw_reg_spms_state ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SPMS_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spms ; 

int FUNC7(struct mlxsw_sp_port *mlxsw_sp_port, u16 vid,
			      u8 state)
{
	enum mlxsw_reg_spms_state spms_state = FUNC6(state);
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char *spms_pl;
	int err;

	spms_pl = FUNC2(MLXSW_REG_SPMS_LEN, GFP_KERNEL);
	if (!spms_pl)
		return -ENOMEM;
	FUNC3(spms_pl, mlxsw_sp_port->local_port);
	FUNC4(spms_pl, vid, spms_state);

	err = FUNC5(mlxsw_sp->core, FUNC0(spms), spms_pl);
	FUNC1(spms_pl);
	return err;
}