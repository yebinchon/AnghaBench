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
struct efx_nic {int phy_mode; scalar_t__ state; int /*<<< orphan*/  net_dev; scalar_t__ reset_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int PHY_MODE_SPECIAL ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 scalar_t__ STATE_DISABLED ; 
 int FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 scalar_t__ FUNC2 (struct efx_nic*) ; 
 scalar_t__ FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  ifup ; 
 struct efx_nic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct net_device *net_dev)
{
	struct efx_nic *efx = FUNC6(net_dev);
	int rc;

	FUNC7(efx, ifup, efx->net_dev, "opening device on CPU %d\n",
		  FUNC9());

	rc = FUNC0(efx);
	if (rc)
		return rc;
	if (efx->phy_mode & PHY_MODE_SPECIAL)
		return -EBUSY;
	if (FUNC2(efx) && FUNC3(efx, RESET_TYPE_ALL))
		return -EIO;

	/* Notify the kernel of the link state polled during driver load,
	 * before the monitor starts running */
	FUNC1(efx);

	FUNC5(efx);
	if (efx->state == STATE_DISABLED || efx->reset_pending)
		FUNC8(efx->net_dev);
	FUNC4(efx);
	return 0;
}