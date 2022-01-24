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
struct ef4_nic {int port_enabled; int /*<<< orphan*/  mac_work; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mac_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct ef4_nic *efx)
{
	FUNC8(efx, ifdown, efx->net_dev, "stop port\n");

	FUNC0(efx);

	FUNC4(&efx->mac_lock);
	efx->port_enabled = false;
	FUNC5(&efx->mac_lock);

	/* Serialise against ef4_set_multicast_list() */
	FUNC6(efx->net_dev);
	FUNC7(efx->net_dev);

	FUNC1(&efx->monitor_work);
	FUNC3(efx);
	FUNC2(&efx->mac_work);
}