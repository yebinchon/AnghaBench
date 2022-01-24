#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_rx_dma ) (struct ixgbe_hw*,int) ;int /*<<< orphan*/  (* disable_rx ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags2; int num_rx_queues; int /*<<< orphan*/ * rx_ring; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int IXGBE_FLAG2_RSC_ENABLED ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RFCTL ; 
 int IXGBE_RFCTL_NFSR_DIS ; 
 int IXGBE_RFCTL_NFSW_DIS ; 
 int IXGBE_RFCTL_RSC_DIS ; 
 int /*<<< orphan*/  IXGBE_RXCTRL ; 
 int IXGBE_RXCTRL_DMBYPS ; 
 int IXGBE_RXCTRL_RXEN ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static void FUNC9(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int i;
	u32 rxctrl, rfctl;

	/* disable receives while setting up the descriptors */
	hw->mac.ops.disable_rx(hw);

	FUNC5(adapter);
	FUNC6(adapter);

	/* RSC Setup */
	rfctl = FUNC0(hw, IXGBE_RFCTL);
	rfctl &= ~IXGBE_RFCTL_RSC_DIS;
	if (!(adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED))
		rfctl |= IXGBE_RFCTL_RSC_DIS;

	/* disable NFS filtering */
	rfctl |= (IXGBE_RFCTL_NFSW_DIS | IXGBE_RFCTL_NFSR_DIS);
	FUNC1(hw, IXGBE_RFCTL, rfctl);

	/* Program registers for the distribution of queues */
	FUNC4(adapter);

	/* set_rx_buffer_len must be called before ring initialization */
	FUNC3(adapter);

	/*
	 * Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring
	 */
	for (i = 0; i < adapter->num_rx_queues; i++)
		FUNC2(adapter, adapter->rx_ring[i]);

	rxctrl = FUNC0(hw, IXGBE_RXCTRL);
	/* disable drop enable for 82598 parts */
	if (hw->mac.type == ixgbe_mac_82598EB)
		rxctrl |= IXGBE_RXCTRL_DMBYPS;

	/* enable all receives */
	rxctrl |= IXGBE_RXCTRL_RXEN;
	hw->mac.ops.enable_rx_dma(hw, rxctrl);
}