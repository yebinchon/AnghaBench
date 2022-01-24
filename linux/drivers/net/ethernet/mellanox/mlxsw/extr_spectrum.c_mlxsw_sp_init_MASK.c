#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  notifier_call; } ;
struct mlxsw_sp {scalar_t__ clock; TYPE_1__* ptp_ops; scalar_t__ ptp_state; TYPE_2__ netdevice_nb; struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int /*<<< orphan*/  dev; scalar_t__ read_frc_capable; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* clock_fini ) (scalar_t__) ;int /*<<< orphan*/  (* fini ) (scalar_t__) ;scalar_t__ (* init ) (struct mlxsw_sp*) ;scalar_t__ (* clock_init ) (struct mlxsw_sp*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp* FUNC3 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*) ; 
 int FUNC5 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*) ; 
 int FUNC7 (struct mlxsw_sp*) ; 
 int FUNC8 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*) ; 
 int FUNC10 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp*) ; 
 int FUNC12 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp*) ; 
 int FUNC14 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlxsw_sp*) ; 
 int FUNC16 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlxsw_sp*) ; 
 int FUNC18 (struct mlxsw_sp*) ; 
 int FUNC19 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC20 (struct mlxsw_sp*) ; 
 int FUNC21 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlxsw_sp*) ; 
 int FUNC23 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_netdevice_event ; 
 int /*<<< orphan*/  FUNC24 (struct mlxsw_sp*) ; 
 int FUNC25 (struct mlxsw_sp*) ; 
 int FUNC26 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC27 (struct mlxsw_sp*) ; 
 int FUNC28 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlxsw_sp*) ; 
 int FUNC30 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC31 (struct mlxsw_sp*) ; 
 int FUNC32 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC33 (struct mlxsw_sp*) ; 
 int FUNC34 (struct mlxsw_sp*) ; 
 int FUNC35 (TYPE_2__*) ; 
 scalar_t__ FUNC36 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC41(struct mlxsw_core *mlxsw_core,
			 const struct mlxsw_bus_info *mlxsw_bus_info)
{
	struct mlxsw_sp *mlxsw_sp = FUNC3(mlxsw_core);
	int err;

	mlxsw_sp->core = mlxsw_core;
	mlxsw_sp->bus_info = mlxsw_bus_info;

	err = FUNC19(mlxsw_sp);
	if (err)
		return err;

	err = FUNC8(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to get base mac\n");
		return err;
	}

	err = FUNC21(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize KVDL\n");
		return err;
	}

	err = FUNC18(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize FIDs\n");
		goto err_fids_init;
	}

	err = FUNC34(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to set traps\n");
		goto err_traps_init;
	}

	err = FUNC14(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize devlink traps\n");
		goto err_devlink_traps_init;
	}

	err = FUNC10(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize buffers\n");
		goto err_buffers_init;
	}

	err = FUNC23(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize LAG\n");
		goto err_lag_init;
	}

	/* Initialize SPAN before router and switchdev, so that those components
	 * can call mlxsw_sp_span_respin().
	 */
	err = FUNC30(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to init span system\n");
		goto err_span_init;
	}

	err = FUNC32(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize switchdev\n");
		goto err_switchdev_init;
	}

	err = FUNC12(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to init counter pool\n");
		goto err_counter_pool_init;
	}

	err = FUNC7(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize ACL actions\n");
		goto err_afa_init;
	}

	err = FUNC25(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize NVE\n");
		goto err_nve_init;
	}

	err = FUNC5(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize ACL\n");
		goto err_acl_init;
	}

	err = FUNC28(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize router\n");
		goto err_router_init;
	}

	if (mlxsw_sp->bus_info->read_frc_capable) {
		/* NULL is a valid return value from clock_init */
		mlxsw_sp->clock =
			mlxsw_sp->ptp_ops->clock_init(mlxsw_sp,
						      mlxsw_sp->bus_info->dev);
		if (FUNC0(mlxsw_sp->clock)) {
			err = FUNC1(mlxsw_sp->clock);
			FUNC2(mlxsw_sp->bus_info->dev, "Failed to init ptp clock\n");
			goto err_ptp_clock_init;
		}
	}

	if (mlxsw_sp->clock) {
		/* NULL is a valid return value from ptp_ops->init */
		mlxsw_sp->ptp_state = mlxsw_sp->ptp_ops->init(mlxsw_sp);
		if (FUNC0(mlxsw_sp->ptp_state)) {
			err = FUNC1(mlxsw_sp->ptp_state);
			FUNC2(mlxsw_sp->bus_info->dev, "Failed to initialize PTP\n");
			goto err_ptp_init;
		}
	}

	/* Initialize netdevice notifier after router and SPAN is initialized,
	 * so that the event handler can use router structures and call SPAN
	 * respin.
	 */
	mlxsw_sp->netdevice_nb.notifier_call = mlxsw_sp_netdevice_event;
	err = FUNC35(&mlxsw_sp->netdevice_nb);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to register netdev notifier\n");
		goto err_netdev_notifier;
	}

	err = FUNC16(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to init pipeline debug\n");
		goto err_dpipe_init;
	}

	err = FUNC26(mlxsw_sp);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to create ports\n");
		goto err_ports_create;
	}

	return 0;

err_ports_create:
	FUNC15(mlxsw_sp);
err_dpipe_init:
	FUNC40(&mlxsw_sp->netdevice_nb);
err_netdev_notifier:
	if (mlxsw_sp->clock)
		mlxsw_sp->ptp_ops->fini(mlxsw_sp->ptp_state);
err_ptp_init:
	if (mlxsw_sp->clock)
		mlxsw_sp->ptp_ops->clock_fini(mlxsw_sp->clock);
err_ptp_clock_init:
	FUNC27(mlxsw_sp);
err_router_init:
	FUNC4(mlxsw_sp);
err_acl_init:
	FUNC24(mlxsw_sp);
err_nve_init:
	FUNC6(mlxsw_sp);
err_afa_init:
	FUNC11(mlxsw_sp);
err_counter_pool_init:
	FUNC31(mlxsw_sp);
err_switchdev_init:
	FUNC29(mlxsw_sp);
err_span_init:
	FUNC22(mlxsw_sp);
err_lag_init:
	FUNC9(mlxsw_sp);
err_buffers_init:
	FUNC13(mlxsw_sp);
err_devlink_traps_init:
	FUNC33(mlxsw_sp);
err_traps_init:
	FUNC17(mlxsw_sp);
err_fids_init:
	FUNC20(mlxsw_sp);
	return err;
}