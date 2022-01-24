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
typedef  union igc_adv_tx_desc {int dummy; } igc_adv_tx_desc ;
typedef  int u64 ;
typedef  int u32 ;
struct igc_ring {int reg_idx; int dma; int count; scalar_t__ tail; } ;
struct igc_hw {int dummy; } ;
struct igc_adapter {scalar_t__ io_addr; struct igc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int IGC_TXDCTL_QUEUE_ENABLE ; 
 int IGC_TX_HTHRESH ; 
 int IGC_TX_PTHRESH ; 
 int IGC_TX_WTHRESH ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct igc_adapter *adapter,
				  struct igc_ring *ring)
{
	struct igc_hw *hw = &adapter->hw;
	int reg_idx = ring->reg_idx;
	u64 tdba = ring->dma;
	u32 txdctl = 0;

	/* disable the queue */
	FUNC7(FUNC5(reg_idx), 0);
	FUNC8();
	FUNC6(10);

	FUNC7(FUNC3(reg_idx),
	     ring->count * sizeof(union igc_adv_tx_desc));
	FUNC7(FUNC1(reg_idx),
	     tdba & 0x00000000ffffffffULL);
	FUNC7(FUNC0(reg_idx), tdba >> 32);

	ring->tail = adapter->io_addr + FUNC4(reg_idx);
	FUNC7(FUNC2(reg_idx), 0);
	FUNC9(0, ring->tail);

	txdctl |= IGC_TX_PTHRESH;
	txdctl |= IGC_TX_HTHRESH << 8;
	txdctl |= IGC_TX_WTHRESH << 16;

	txdctl |= IGC_TXDCTL_QUEUE_ENABLE;
	FUNC7(FUNC5(reg_idx), txdctl);
}