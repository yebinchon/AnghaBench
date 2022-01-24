#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct igb_ring {int reg_idx; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  count; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int /*<<< orphan*/  netdev; TYPE_1__* pdev; struct e1000_hw hw; struct igb_ring test_rx_ring; struct igb_ring test_tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_MRQC ; 
 int /*<<< orphan*/  IGB_DEFAULT_RXD ; 
 int /*<<< orphan*/  IGB_DEFAULT_TXD ; 
 int /*<<< orphan*/  FUNC0 (struct igb_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 scalar_t__ FUNC6 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*) ; 
 scalar_t__ FUNC8 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct igb_adapter *adapter)
{
	struct igb_ring *tx_ring = &adapter->test_tx_ring;
	struct igb_ring *rx_ring = &adapter->test_rx_ring;
	struct e1000_hw *hw = &adapter->hw;
	int ret_val;

	/* Setup Tx descriptor ring and Tx buffers */
	tx_ring->count = IGB_DEFAULT_TXD;
	tx_ring->dev = &adapter->pdev->dev;
	tx_ring->netdev = adapter->netdev;
	tx_ring->reg_idx = adapter->vfs_allocated_count;

	if (FUNC8(tx_ring)) {
		ret_val = 1;
		goto err_nomem;
	}

	FUNC7(adapter);
	FUNC2(adapter, tx_ring);

	/* Setup Rx descriptor ring and Rx buffers */
	rx_ring->count = IGB_DEFAULT_RXD;
	rx_ring->dev = &adapter->pdev->dev;
	rx_ring->netdev = adapter->netdev;
	rx_ring->reg_idx = adapter->vfs_allocated_count;

	if (FUNC6(rx_ring)) {
		ret_val = 3;
		goto err_nomem;
	}

	/* set the default queue to queue 0 of PF */
	FUNC9(E1000_MRQC, adapter->vfs_allocated_count << 3);

	/* enable receive ring */
	FUNC5(adapter);
	FUNC1(adapter, rx_ring);

	FUNC0(rx_ring, FUNC3(rx_ring));

	return 0;

err_nomem:
	FUNC4(adapter);
	return ret_val;
}