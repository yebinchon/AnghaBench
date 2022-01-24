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
struct iwl_priv {int /*<<< orphan*/  ucode_trace; int /*<<< orphan*/  statistics_periodic; int /*<<< orphan*/  bt_runtime_config; int /*<<< orphan*/  bt_full_concurrency; int /*<<< orphan*/  beacon_update; int /*<<< orphan*/  run_time_calib_work; TYPE_1__* lib; } ;
struct TYPE_2__ {scalar_t__ bt_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 

void FUNC4(struct iwl_priv *priv)
{
	if (priv->lib->bt_params)
		FUNC3(priv);

	FUNC0(&priv->run_time_calib_work);
	FUNC0(&priv->beacon_update);

	FUNC2(priv);

	FUNC0(&priv->bt_full_concurrency);
	FUNC0(&priv->bt_runtime_config);

	FUNC1(&priv->statistics_periodic);
	FUNC1(&priv->ucode_trace);
}