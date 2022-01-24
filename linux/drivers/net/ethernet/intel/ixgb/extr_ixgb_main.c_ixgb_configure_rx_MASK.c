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
typedef  int u64 ;
typedef  int u32 ;
struct ixgb_rx_desc {int dummy; } ;
struct ixgb_hw {int dummy; } ;
struct TYPE_2__ {int dma; int count; } ;
struct ixgb_adapter {int rx_int_delay; scalar_t__ rx_csum; struct ixgb_hw hw; TYPE_1__ rx_ring; } ;

/* Variables and functions */
 int IXGB_RCTL_RXEN ; 
 int FUNC0 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int IXGB_RXCSUM_TUOFL ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  RDBAH ; 
 int /*<<< orphan*/  RDBAL ; 
 int /*<<< orphan*/  RDH ; 
 int /*<<< orphan*/  RDLEN ; 
 int /*<<< orphan*/  RDT ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  RXCSUM ; 
 int /*<<< orphan*/  RXDCTL ; 

__attribute__((used)) static void
FUNC2(struct ixgb_adapter *adapter)
{
	u64 rdba = adapter->rx_ring.dma;
	u32 rdlen = adapter->rx_ring.count * sizeof(struct ixgb_rx_desc);
	struct ixgb_hw *hw = &adapter->hw;
	u32 rctl;
	u32 rxcsum;

	/* make sure receives are disabled while setting up the descriptors */

	rctl = FUNC0(hw, RCTL);
	FUNC1(hw, RCTL, rctl & ~IXGB_RCTL_RXEN);

	/* set the Receive Delay Timer Register */

	FUNC1(hw, RDTR, adapter->rx_int_delay);

	/* Setup the Base and Length of the Rx Descriptor Ring */

	FUNC1(hw, RDBAL, (rdba & 0x00000000ffffffffULL));
	FUNC1(hw, RDBAH, (rdba >> 32));

	FUNC1(hw, RDLEN, rdlen);

	/* Setup the HW Rx Head and Tail Descriptor Pointers */
	FUNC1(hw, RDH, 0);
	FUNC1(hw, RDT, 0);

	/* due to the hardware errata with RXDCTL, we are unable to use any of
	 * the performance enhancing features of it without causing other
	 * subtle bugs, some of the bugs could include receive length
	 * corruption at high data rates (WTHRESH > 0) and/or receive
	 * descriptor ring irregularites (particularly in hardware cache) */
	FUNC1(hw, RXDCTL, 0);

	/* Enable Receive Checksum Offload for TCP and UDP */
	if (adapter->rx_csum) {
		rxcsum = FUNC0(hw, RXCSUM);
		rxcsum |= IXGB_RXCSUM_TUOFL;
		FUNC1(hw, RXCSUM, rxcsum);
	}

	/* Enable Receives */

	FUNC1(hw, RCTL, rctl);
}