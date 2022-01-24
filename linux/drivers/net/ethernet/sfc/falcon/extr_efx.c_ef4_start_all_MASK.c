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
struct ef4_nic {scalar_t__ state; int /*<<< orphan*/  stats_lock; TYPE_1__* type; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  workqueue; scalar_t__ reset_pending; int /*<<< orphan*/  net_dev; scalar_t__ port_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_stats ) (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* pull_stats ) (struct ef4_nic*) ;int /*<<< orphan*/  (* start_stats ) (struct ef4_nic*) ;int /*<<< orphan*/ * monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 scalar_t__ STATE_DISABLED ; 
 int /*<<< orphan*/  ef4_monitor_interval ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ef4_nic *efx)
{
	FUNC1(efx);
	FUNC0(efx->state == STATE_DISABLED);

	/* Check that it is appropriate to restart the interface. All
	 * of these flags are safe to read under just the rtnl lock */
	if (efx->port_enabled || !FUNC4(efx->net_dev) ||
	    efx->reset_pending)
		return;

	FUNC3(efx);
	FUNC2(efx);

	/* Start the hardware monitor if there is one */
	if (efx->type->monitor != NULL)
		FUNC5(efx->workqueue, &efx->monitor_work,
				   ef4_monitor_interval);

	efx->type->start_stats(efx);
	efx->type->pull_stats(efx);
	FUNC6(&efx->stats_lock);
	efx->type->update_stats(efx, NULL, NULL);
	FUNC7(&efx->stats_lock);
}