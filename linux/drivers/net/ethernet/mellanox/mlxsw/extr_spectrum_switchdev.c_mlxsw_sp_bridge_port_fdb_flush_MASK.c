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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_bridge_port {int lagged; int /*<<< orphan*/  system_port; int /*<<< orphan*/  lag_id; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_SFDF_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  sfdf ; 

__attribute__((used)) static int
FUNC6(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_bridge_port *bridge_port,
			       u16 fid_index)
{
	bool lagged = bridge_port->lagged;
	char sfdf_pl[MLXSW_REG_SFDF_LEN];
	u16 system_port;

	system_port = lagged ? bridge_port->lag_id : bridge_port->system_port;
	FUNC2(sfdf_pl, FUNC5(lagged));
	FUNC1(sfdf_pl, fid_index);
	FUNC3(sfdf_pl, system_port);

	return FUNC4(mlxsw_sp->core, FUNC0(sfdf), sfdf_pl);
}