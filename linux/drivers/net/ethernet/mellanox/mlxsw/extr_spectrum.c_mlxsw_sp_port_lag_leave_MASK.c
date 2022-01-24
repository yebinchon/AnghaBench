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
struct net_device {int dummy; } ;
struct mlxsw_sp_upper {int ref_count; } ;
struct mlxsw_sp_port {scalar_t__ lagged; int /*<<< orphan*/  local_port; int /*<<< orphan*/  default_vlan; int /*<<< orphan*/  lag_id; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_DEFAULT_VID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_upper* FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_port*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_port*,int) ; 

__attribute__((used)) static void FUNC9(struct mlxsw_sp_port *mlxsw_sp_port,
				    struct net_device *lag_dev)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	u16 lag_id = mlxsw_sp_port->lag_id;
	struct mlxsw_sp_upper *lag;

	if (!mlxsw_sp_port->lagged)
		return;
	lag = FUNC4(mlxsw_sp, lag_id);
	FUNC0(lag->ref_count == 0);

	FUNC2(mlxsw_sp_port, lag_id);

	/* Any VLANs configured on the port are no longer valid */
	FUNC8(mlxsw_sp_port, false);
	FUNC7(mlxsw_sp_port->default_vlan);
	/* Make the LAG and its directly linked uppers leave bridges they
	 * are memeber in
	 */
	FUNC5(mlxsw_sp_port, lag_dev);

	if (lag->ref_count == 1)
		FUNC3(mlxsw_sp, lag_id);

	FUNC1(mlxsw_sp->core, lag_id,
				     mlxsw_sp_port->local_port);
	mlxsw_sp_port->lagged = 0;
	lag->ref_count--;

	/* Make sure untagged frames are allowed to ingress */
	FUNC6(mlxsw_sp_port, MLXSW_SP_DEFAULT_VID);
}