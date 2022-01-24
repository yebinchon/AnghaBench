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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct fjes_hw {int dummy; } ;
struct fjes_adapter {int /*<<< orphan*/  napi; scalar_t__ txrx_wq; scalar_t__ control_wq; int /*<<< orphan*/  tx_stall_task; int /*<<< orphan*/  raise_intr_rxdata_task; int /*<<< orphan*/  unshare_watch_task; int /*<<< orphan*/  interrupt_watch_task; struct fjes_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fjes_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct fjes_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *plat_dev)
{
	struct net_device *netdev = FUNC3(&plat_dev->dev);
	struct fjes_adapter *adapter = FUNC7(netdev);
	struct fjes_hw *hw = &adapter->hw;

	FUNC4(adapter);

	FUNC0(&adapter->interrupt_watch_task);
	FUNC1(&adapter->unshare_watch_task);
	FUNC1(&adapter->raise_intr_rxdata_task);
	FUNC1(&adapter->tx_stall_task);
	if (adapter->control_wq)
		FUNC2(adapter->control_wq);
	if (adapter->txrx_wq)
		FUNC2(adapter->txrx_wq);

	FUNC9(netdev);

	FUNC5(hw);

	FUNC8(&adapter->napi);

	FUNC6(netdev);

	return 0;
}