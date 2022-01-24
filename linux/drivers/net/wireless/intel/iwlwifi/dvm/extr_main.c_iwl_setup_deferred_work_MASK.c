#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_priv {int /*<<< orphan*/  ucode_trace; int /*<<< orphan*/  statistics_periodic; TYPE_1__* lib; int /*<<< orphan*/  bt_runtime_config; int /*<<< orphan*/  bt_full_concurrency; int /*<<< orphan*/  tx_flush; int /*<<< orphan*/  run_time_calib_work; int /*<<< orphan*/  beacon_update; int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; } ;
struct TYPE_2__ {scalar_t__ bt_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_bg_beacon_update ; 
 int /*<<< orphan*/  iwl_bg_bt_full_concurrency ; 
 int /*<<< orphan*/  iwl_bg_bt_runtime_config ; 
 int /*<<< orphan*/  iwl_bg_restart ; 
 int /*<<< orphan*/  iwl_bg_run_time_calib_work ; 
 int /*<<< orphan*/  iwl_bg_statistics_periodic ; 
 int /*<<< orphan*/  iwl_bg_tx_flush ; 
 int /*<<< orphan*/  iwl_bg_ucode_trace ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iwl_priv *priv)
{
	priv->workqueue = FUNC1(DRV_NAME, 0);

	FUNC0(&priv->restart, iwl_bg_restart);
	FUNC0(&priv->beacon_update, iwl_bg_beacon_update);
	FUNC0(&priv->run_time_calib_work, iwl_bg_run_time_calib_work);
	FUNC0(&priv->tx_flush, iwl_bg_tx_flush);
	FUNC0(&priv->bt_full_concurrency, iwl_bg_bt_full_concurrency);
	FUNC0(&priv->bt_runtime_config, iwl_bg_bt_runtime_config);

	FUNC2(priv);

	if (priv->lib->bt_params)
		FUNC3(priv);

	FUNC4(&priv->statistics_periodic, iwl_bg_statistics_periodic, 0);

	FUNC4(&priv->ucode_trace, iwl_bg_ucode_trace, 0);
}