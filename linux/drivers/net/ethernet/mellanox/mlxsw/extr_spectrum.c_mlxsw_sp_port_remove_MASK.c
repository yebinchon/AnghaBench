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
typedef  size_t u8 ;
struct TYPE_4__ {int /*<<< orphan*/  shaper_dw; } ;
struct TYPE_3__ {int /*<<< orphan*/  update_dw; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  vlans_list; int /*<<< orphan*/  pcpu_stats; int /*<<< orphan*/  sample; TYPE_2__ ptp; TYPE_1__ periodic_hw_stats; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; struct mlxsw_sp_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_PORT_SWID_DISABLED_PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlxsw_sp_port*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mlxsw_sp_port*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct mlxsw_sp *mlxsw_sp, u8 local_port)
{
	struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp->ports[local_port];

	FUNC1(&mlxsw_sp_port->periodic_hw_stats.update_dw);
	FUNC1(&mlxsw_sp_port->ptp.shaper_dw);
	FUNC12(mlxsw_sp_port);
	FUNC6(mlxsw_sp->core, local_port, mlxsw_sp);
	FUNC17(mlxsw_sp_port->dev); /* This calls ndo_stop */
	mlxsw_sp->ports[local_port] = NULL;
	FUNC15(mlxsw_sp_port, true);
	FUNC11(mlxsw_sp_port);
	FUNC16(mlxsw_sp_port);
	FUNC9(mlxsw_sp_port);
	FUNC8(mlxsw_sp_port);
	FUNC14(mlxsw_sp_port, false);
	FUNC13(mlxsw_sp_port, MLXSW_PORT_SWID_DISABLED_PORT);
	FUNC10(mlxsw_sp_port);
	FUNC4(mlxsw_sp_port->sample);
	FUNC3(mlxsw_sp_port->pcpu_stats);
	FUNC0(!FUNC5(&mlxsw_sp_port->vlans_list));
	FUNC2(mlxsw_sp_port->dev);
	FUNC7(mlxsw_sp->core, local_port);
}