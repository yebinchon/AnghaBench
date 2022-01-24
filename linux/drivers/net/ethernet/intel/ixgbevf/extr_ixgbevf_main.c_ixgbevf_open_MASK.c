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
struct ixgbe_hw {scalar_t__ adapter_stopped; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  num_tx_queues; int /*<<< orphan*/  state; int /*<<< orphan*/  num_msix_vectors; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int IXGBE_ERR_MBX ; 
 int /*<<< orphan*/  __IXGBEVF_TESTING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_adapter*) ; 
 int FUNC6 (struct ixgbevf_adapter*) ; 
 int FUNC7 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct net_device *netdev)
{
	struct ixgbevf_adapter *adapter = FUNC9(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	int err;

	/* A previous failure to open the device because of a lack of
	 * available MSIX vector resources may have reset the number
	 * of msix vectors variable to zero.  The only way to recover
	 * is to unload/reload the driver and hope that the system has
	 * been able to recover some MSIX vector resources.
	 */
	if (!adapter->num_msix_vectors)
		return -ENOMEM;

	if (hw->adapter_stopped) {
		FUNC5(adapter);
		/* if adapter is still stopped then PF isn't up and
		 * the VF can't start.
		 */
		if (hw->adapter_stopped) {
			err = IXGBE_ERR_MBX;
			FUNC13("Unable to start - perhaps the PF Driver isn't up yet\n");
			goto err_setup_reset;
		}
	}

	/* disallow open during test */
	if (FUNC14(__IXGBEVF_TESTING, &adapter->state))
		return -EBUSY;

	FUNC10(netdev);

	/* allocate transmit descriptors */
	err = FUNC7(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC6(adapter);
	if (err)
		goto err_setup_rx;

	FUNC0(adapter);

	err = FUNC4(adapter);
	if (err)
		goto err_req_irq;

	/* Notify the stack of the actual queue counts. */
	err = FUNC12(netdev, adapter->num_tx_queues);
	if (err)
		goto err_set_queues;

	err = FUNC11(netdev, adapter->num_rx_queues);
	if (err)
		goto err_set_queues;

	FUNC8(adapter);

	return 0;

err_set_queues:
	FUNC3(adapter);
err_req_irq:
	FUNC1(adapter);
err_setup_rx:
	FUNC2(adapter);
err_setup_tx:
	FUNC5(adapter);
err_setup_reset:

	return err;
}