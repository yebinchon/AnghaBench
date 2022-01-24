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
struct xgbe_hw_if {int /*<<< orphan*/  (* powerdown_rx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* powerdown_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int power_down; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_workqueue; struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned int XGMAC_DRIVER_CONTEXT ; 
 unsigned int XGMAC_IOCTL_CONTEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct xgbe_prv_data* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xgbe_prv_data*) ; 

int FUNC13(struct net_device *netdev, unsigned int caller)
{
	struct xgbe_prv_data *pdata = FUNC3(netdev);
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	unsigned long flags;

	FUNC0("-->xgbe_powerdown\n");

	if (!FUNC5(netdev) ||
	    (caller == XGMAC_IOCTL_CONTEXT && pdata->power_down)) {
		FUNC2(netdev, "Device is already powered down\n");
		FUNC0("<--xgbe_powerdown\n");
		return -EINVAL;
	}

	FUNC7(&pdata->lock, flags);

	if (caller == XGMAC_DRIVER_CONTEXT)
		FUNC4(netdev);

	FUNC6(netdev);

	FUNC12(pdata);
	FUNC1(pdata->dev_workqueue);

	hw_if->powerdown_tx(pdata);
	hw_if->powerdown_rx(pdata);

	FUNC11(pdata, 0);

	pdata->power_down = 1;

	FUNC8(&pdata->lock, flags);

	FUNC0("<--xgbe_powerdown\n");

	return 0;
}