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
struct ef4_nic {int /*<<< orphan*/  net_dev; TYPE_1__* type; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  port_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop_stats ) (struct ef4_nic*) ;int /*<<< orphan*/  (* update_stats ) (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* pull_stats ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ef4_nic*) ; 

__attribute__((used)) static void FUNC12(struct ef4_nic *efx)
{
	FUNC0(efx);

	/* port_enabled can be read safely under the rtnl lock */
	if (!efx->port_enabled)
		return;

	/* update stats before we go down so we can accurately count
	 * rx_nodesc_drops
	 */
	efx->type->pull_stats(efx);
	FUNC7(&efx->stats_lock);
	efx->type->update_stats(efx, NULL, NULL);
	FUNC8(&efx->stats_lock);
	efx->type->stop_stats(efx);
	FUNC3(efx);

	/* Stop the kernel transmit interface.  This is only valid if
	 * the device is stopped or detached; otherwise the watchdog
	 * may fire immediately.
	 */
	FUNC1(FUNC5(efx->net_dev) &&
		FUNC4(efx->net_dev));
	FUNC6(efx->net_dev);

	FUNC2(efx);
}