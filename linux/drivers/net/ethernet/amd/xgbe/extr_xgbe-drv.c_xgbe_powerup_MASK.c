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
struct xgbe_hw_if {int /*<<< orphan*/  (* powerup_rx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* powerup_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int /*<<< orphan*/  lock; scalar_t__ power_down; struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned int XGMAC_DRIVER_CONTEXT ; 
 unsigned int XGMAC_IOCTL_CONTEXT ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct xgbe_prv_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*) ; 

int FUNC12(struct net_device *netdev, unsigned int caller)
{
	struct xgbe_prv_data *pdata = FUNC2(netdev);
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	unsigned long flags;

	FUNC0("-->xgbe_powerup\n");

	if (!FUNC4(netdev) ||
	    (caller == XGMAC_IOCTL_CONTEXT && !pdata->power_down)) {
		FUNC1(netdev, "Device is already powered up\n");
		FUNC0("<--xgbe_powerup\n");
		return -EINVAL;
	}

	FUNC6(&pdata->lock, flags);

	pdata->power_down = 0;

	FUNC10(pdata, 0);

	hw_if->powerup_tx(pdata);
	hw_if->powerup_rx(pdata);

	if (caller == XGMAC_DRIVER_CONTEXT)
		FUNC3(netdev);

	FUNC5(netdev);

	FUNC11(pdata);

	FUNC7(&pdata->lock, flags);

	FUNC0("<--xgbe_powerup\n");

	return 0;
}