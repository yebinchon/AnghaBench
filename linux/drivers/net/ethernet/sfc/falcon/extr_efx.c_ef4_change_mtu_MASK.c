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
struct ef4_nic {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mac_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ef4_nic* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *net_dev, int new_mtu)
{
	struct ef4_nic *efx = FUNC7(net_dev);
	int rc;

	rc = FUNC0(efx);
	if (rc)
		return rc;

	FUNC8(efx, drv, efx->net_dev, "changing MTU to %d\n", new_mtu);

	FUNC1(efx);
	FUNC4(efx);

	FUNC5(&efx->mac_lock);
	net_dev->mtu = new_mtu;
	FUNC2(efx);
	FUNC6(&efx->mac_lock);

	FUNC3(efx);
	FUNC9(efx->net_dev);
	return 0;
}