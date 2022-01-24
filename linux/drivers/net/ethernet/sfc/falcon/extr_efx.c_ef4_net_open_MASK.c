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
struct net_device {int dummy; } ;
struct ef4_nic {int phy_mode; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int PHY_MODE_SPECIAL ; 
 int FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  ifup ; 
 struct ef4_nic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct net_device *net_dev)
{
	struct ef4_nic *efx = FUNC4(net_dev);
	int rc;

	FUNC5(efx, ifup, efx->net_dev, "opening device on CPU %d\n",
		  FUNC6());

	rc = FUNC0(efx);
	if (rc)
		return rc;
	if (efx->phy_mode & PHY_MODE_SPECIAL)
		return -EBUSY;

	/* Notify the kernel of the link state polled during driver load,
	 * before the monitor starts running */
	FUNC1(efx);

	FUNC3(efx);
	FUNC2(efx);
	return 0;
}