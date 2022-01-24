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
struct fjes_hw {scalar_t__ epstop_req_bit; scalar_t__ txrx_stop_req_bit; } ;
struct fjes_adapter {int /*<<< orphan*/  napi; scalar_t__ open_guard; struct fjes_hw hw; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  REG_ICTL_MASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct fjes_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct fjes_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct fjes_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct fjes_adapter*) ; 
 int FUNC5 (struct fjes_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct fjes_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct fjes_adapter *adapter = FUNC8(netdev);
	struct fjes_hw *hw = &adapter->hw;
	int result;

	if (adapter->open_guard)
		return -ENXIO;

	result = FUNC5(adapter);
	if (result)
		goto err_setup_res;

	hw->txrx_stop_req_bit = 0;
	hw->epstop_req_bit = 0;

	FUNC7(&adapter->napi);

	FUNC2(hw);

	result = FUNC4(adapter);
	if (result)
		goto err_req_irq;

	FUNC3(hw, REG_ICTL_MASK_ALL, false);

	FUNC10(netdev);
	FUNC9(netdev);

	return 0;

err_req_irq:
	FUNC0(adapter);
	FUNC6(&adapter->napi);

err_setup_res:
	FUNC1(adapter);
	return result;
}