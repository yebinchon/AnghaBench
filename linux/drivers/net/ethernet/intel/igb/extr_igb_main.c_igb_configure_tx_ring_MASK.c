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
typedef  union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
typedef  int u64 ;
typedef  int u32 ;
struct igb_tx_buffer {int dummy; } ;
struct igb_ring {int dma; int reg_idx; int count; int /*<<< orphan*/  tx_buffer_info; scalar_t__ tail; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {scalar_t__ io_addr; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int E1000_TXDCTL_QUEUE_ENABLE ; 
 int IGB_TX_HTHRESH ; 
 int IGB_TX_PTHRESH ; 
 int IGB_TX_WTHRESH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC9(struct igb_adapter *adapter,
			   struct igb_ring *ring)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 txdctl = 0;
	u64 tdba = ring->dma;
	int reg_idx = ring->reg_idx;

	FUNC7(FUNC3(reg_idx),
	     ring->count * sizeof(union e1000_adv_tx_desc));
	FUNC7(FUNC1(reg_idx),
	     tdba & 0x00000000ffffffffULL);
	FUNC7(FUNC0(reg_idx), tdba >> 32);

	ring->tail = adapter->io_addr + FUNC4(reg_idx);
	FUNC7(FUNC2(reg_idx), 0);
	FUNC8(0, ring->tail);

	txdctl |= IGB_TX_PTHRESH;
	txdctl |= IGB_TX_HTHRESH << 8;
	txdctl |= IGB_TX_WTHRESH << 16;

	/* reinitialize tx_buffer_info */
	FUNC6(ring->tx_buffer_info, 0,
	       sizeof(struct igb_tx_buffer) * ring->count);

	txdctl |= E1000_TXDCTL_QUEUE_ENABLE;
	FUNC7(FUNC5(reg_idx), txdctl);
}