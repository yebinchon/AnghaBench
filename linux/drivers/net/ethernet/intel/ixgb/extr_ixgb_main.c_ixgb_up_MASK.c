#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int mtu; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct ixgb_hw {int max_frame_size; } ;
struct ixgb_adapter {int have_msi; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; struct net_device* netdev; TYPE_1__* pdev; struct ixgb_hw hw; int /*<<< orphan*/  rx_ring; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL0 ; 
 int ENET_FCS_LENGTH ; 
 int ENET_HEADER_SIZE ; 
 int /*<<< orphan*/  IMC ; 
 int IRQF_SHARED ; 
 int IXGB_CTRL0_JFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS ; 
 int IXGB_MFS_SHIFT ; 
 int FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int IXGB_STATUS_PCIX_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MFS ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  __IXGB_DOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  ixgb_intr ; 
 int /*<<< orphan*/  FUNC7 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgb_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgb_adapter*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 

int
FUNC19(struct ixgb_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err, irq_flags = IRQF_SHARED;
	int max_frame = netdev->mtu + ENET_HEADER_SIZE + ENET_FCS_LENGTH;
	struct ixgb_hw *hw = &adapter->hw;

	/* hardware has been reset, we need to reload some things */

	FUNC8(hw, netdev->dev_addr, 0);
	FUNC10(netdev);

	FUNC9(adapter);

	FUNC6(adapter);
	FUNC11(adapter);
	FUNC5(adapter);
	FUNC4(adapter, FUNC0(&adapter->rx_ring));

	/* disable interrupts and get the hardware into a known state */
	FUNC2(&adapter->hw, IMC, 0xffffffff);

	/* only enable MSI if bus is in PCI-X mode */
	if (FUNC1(&adapter->hw, STATUS) & IXGB_STATUS_PCIX_MODE) {
		err = FUNC17(adapter->pdev);
		if (!err) {
			adapter->have_msi = true;
			irq_flags = 0;
		}
		/* proceed to try to request regular interrupt */
	}

	err = FUNC18(adapter->pdev->irq, ixgb_intr, irq_flags,
	                  netdev->name, netdev);
	if (err) {
		if (adapter->have_msi)
			FUNC16(adapter->pdev);
		FUNC14(adapter, probe, adapter->netdev,
			  "Unable to allocate interrupt Error: %d\n", err);
		return err;
	}

	if ((hw->max_frame_size != max_frame) ||
		(hw->max_frame_size !=
		(FUNC1(hw, MFS) >> IXGB_MFS_SHIFT))) {

		hw->max_frame_size = max_frame;

		FUNC2(hw, MFS, hw->max_frame_size << IXGB_MFS_SHIFT);

		if (hw->max_frame_size >
		   IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS + ENET_FCS_LENGTH) {
			u32 ctrl0 = FUNC1(hw, CTRL0);

			if (!(ctrl0 & IXGB_CTRL0_JFE)) {
				ctrl0 |= IXGB_CTRL0_JFE;
				FUNC2(hw, CTRL0, ctrl0);
			}
		}
	}

	FUNC3(__IXGB_DOWN, &adapter->flags);

	FUNC13(&adapter->napi);
	FUNC7(adapter);

	FUNC15(netdev);

	FUNC12(&adapter->watchdog_timer, jiffies);

	return 0;
}