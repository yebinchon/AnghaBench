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
typedef  size_t u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {size_t num_tx_queues; size_t num_xdp_queues; int /*<<< orphan*/ * xdp_ring; int /*<<< orphan*/ * tx_ring; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_DMATXCTL ; 
 size_t IXGBE_DMATXCTL_TE ; 
 size_t FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 dmatxctl;
	u32 i;

	FUNC3(adapter);

	if (hw->mac.type != ixgbe_mac_82598EB) {
		/* DMATXCTL.EN must be before Tx queues are enabled */
		dmatxctl = FUNC0(hw, IXGBE_DMATXCTL);
		dmatxctl |= IXGBE_DMATXCTL_TE;
		FUNC1(hw, IXGBE_DMATXCTL, dmatxctl);
	}

	/* Setup the HW Tx Head and Tail descriptor pointers */
	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC2(adapter, adapter->tx_ring[i]);
	for (i = 0; i < adapter->num_xdp_queues; i++)
		FUNC2(adapter, adapter->xdp_ring[i]);
}