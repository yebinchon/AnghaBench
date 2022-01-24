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
struct efx_nic {scalar_t__ state; int /*<<< orphan*/  stats_lock; TYPE_2__* type; int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  workqueue; scalar_t__ reset_pending; int /*<<< orphan*/  net_dev; scalar_t__ port_enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_stats ) (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* pull_stats ) (struct efx_nic*) ;int /*<<< orphan*/  (* start_stats ) (struct efx_nic*) ;int /*<<< orphan*/ * monitor; } ;
struct TYPE_3__ {scalar_t__ (* poll ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 scalar_t__ STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_monitor_interval ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC13 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct efx_nic *efx)
{
	FUNC1(efx);
	FUNC0(efx->state == STATE_DISABLED);

	/* Check that it is appropriate to restart the interface. All
	 * of these flags are safe to read under just the rtnl lock */
	if (efx->port_enabled || !FUNC7(efx->net_dev) ||
	    efx->reset_pending)
		return;

	FUNC4(efx);
	FUNC3(efx);

	/* Start the hardware monitor if there is one */
	if (efx->type->monitor != NULL)
		FUNC8(efx->workqueue, &efx->monitor_work,
				   efx_monitor_interval);

	/* Link state detection is normally event-driven; we have
	 * to poll now because we could have missed a change
	 */
	FUNC5(&efx->mac_lock);
	if (efx->phy_op->poll(efx))
		FUNC2(efx);
	FUNC6(&efx->mac_lock);

	efx->type->start_stats(efx);
	efx->type->pull_stats(efx);
	FUNC9(&efx->stats_lock);
	efx->type->update_stats(efx, NULL, NULL);
	FUNC10(&efx->stats_lock);
}