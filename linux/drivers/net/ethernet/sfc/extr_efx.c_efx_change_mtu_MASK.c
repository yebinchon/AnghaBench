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
struct net_device {int mtu; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *net_dev, int new_mtu)
{
	struct efx_nic *efx = FUNC8(net_dev);
	int rc;

	rc = FUNC0(efx);
	if (rc)
		return rc;

	FUNC9(efx, drv, efx->net_dev, "changing MTU to %d\n", new_mtu);

	FUNC2(efx);
	FUNC5(efx);

	FUNC6(&efx->mac_lock);
	net_dev->mtu = new_mtu;
	FUNC3(efx);
	FUNC7(&efx->mac_lock);

	FUNC4(efx);
	FUNC1(efx);
	return 0;
}