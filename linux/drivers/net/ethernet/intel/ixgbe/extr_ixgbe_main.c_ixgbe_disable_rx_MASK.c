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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ixgbe_ring {int /*<<< orphan*/  reg_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable_rx ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; int /*<<< orphan*/  hw_addr; } ;
struct ixgbe_adapter {int num_rx_queues; struct ixgbe_ring** rx_ring; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_LINKS ; 
 int IXGBE_LINKS_UP ; 
 int IXGBE_MAX_RX_DESC_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int IXGBE_RXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ixgbe_adapter*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 

void FUNC8(struct ixgbe_adapter *adapter)
{
	unsigned long wait_delay, delay_interval;
	struct ixgbe_hw *hw = &adapter->hw;
	int i, wait_loop;
	u32 rxdctl;

	/* disable receives */
	hw->mac.ops.disable_rx(hw);

	if (FUNC5(hw->hw_addr))
		return;

	/* disable all enabled Rx queues */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct ixgbe_ring *ring = adapter->rx_ring[i];
		u8 reg_idx = ring->reg_idx;

		rxdctl = FUNC0(hw, FUNC1(reg_idx));
		rxdctl &= ~IXGBE_RXDCTL_ENABLE;
		rxdctl |= IXGBE_RXDCTL_SWFLSH;

		/* write value back with RXDCTL.ENABLE bit cleared */
		FUNC2(hw, FUNC1(reg_idx), rxdctl);
	}

	/* RXDCTL.EN may not change on 82598 if link is down, so skip it */
	if (hw->mac.type == ixgbe_mac_82598EB &&
	    !(FUNC0(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
		return;

	/* Determine our minimum delay interval. We will increase this value
	 * with each subsequent test. This way if the device returns quickly
	 * we should spend as little time as possible waiting, however as
	 * the time increases we will wait for larger periods of time.
	 *
	 * The trick here is that we increase the interval using the
	 * following pattern: 1x 3x 5x 7x 9x 11x 13x 15x 17x 19x. The result
	 * of that wait is that it totals up to 100x whatever interval we
	 * choose. Since our minimum wait is 100us we can just divide the
	 * total timeout by 100 to get our minimum delay interval.
	 */
	delay_interval = FUNC4(adapter) / 100;

	wait_loop = IXGBE_MAX_RX_DESC_POLL;
	wait_delay = delay_interval;

	while (wait_loop--) {
		FUNC7(wait_delay, wait_delay + 10);
		wait_delay += delay_interval * 2;
		rxdctl = 0;

		/* OR together the reading of all the active RXDCTL registers,
		 * and then test the result. We need the disable to complete
		 * before we start freeing the memory and invalidating the
		 * DMA mappings.
		 */
		for (i = 0; i < adapter->num_rx_queues; i++) {
			struct ixgbe_ring *ring = adapter->rx_ring[i];
			u8 reg_idx = ring->reg_idx;

			rxdctl |= FUNC0(hw, FUNC1(reg_idx));
		}

		if (!(rxdctl & IXGBE_RXDCTL_ENABLE))
			return;
	}

	FUNC3(drv,
	      "RXDCTL.ENABLE for one or more queues not cleared within the polling period\n");
}