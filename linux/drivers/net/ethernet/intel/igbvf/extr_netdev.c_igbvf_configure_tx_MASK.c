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
struct igbvf_ring {int count; int dma; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {int txd_cmd; struct igbvf_ring* tx_ring; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int E1000_ADVTXD_DCMD_EOP ; 
 int E1000_ADVTXD_DCMD_IFCS ; 
 int E1000_ADVTXD_DCMD_RS ; 
 int E1000_DCA_TXCTRL_TX_WB_RO_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int E1000_TXDCTL_QUEUE_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct igbvf_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct igbvf_ring *tx_ring = adapter->tx_ring;
	u64 tdba;
	u32 txdctl, dca_txctrl;

	/* disable transmits */
	txdctl = FUNC11(FUNC9(0));
	FUNC12(FUNC9(0), txdctl & ~E1000_TXDCTL_QUEUE_ENABLE);
	FUNC10();
	FUNC13(10);

	/* Setup the HW Tx Head and Tail descriptor pointers */
	FUNC12(FUNC7(0), tx_ring->count * sizeof(union e1000_adv_tx_desc));
	tdba = tx_ring->dma;
	FUNC12(FUNC5(0), (tdba & FUNC1(32)));
	FUNC12(FUNC4(0), (tdba >> 32));
	FUNC12(FUNC6(0), 0);
	FUNC12(FUNC8(0), 0);
	tx_ring->head = FUNC2(0);
	tx_ring->tail = FUNC3(0);

	/* Turn off Relaxed Ordering on head write-backs.  The writebacks
	 * MUST be delivered in order or it will completely screw up
	 * our bookkeeping.
	 */
	dca_txctrl = FUNC11(FUNC0(0));
	dca_txctrl &= ~E1000_DCA_TXCTRL_TX_WB_RO_EN;
	FUNC12(FUNC0(0), dca_txctrl);

	/* enable transmits */
	txdctl |= E1000_TXDCTL_QUEUE_ENABLE;
	FUNC12(FUNC9(0), txdctl);

	/* Setup Transmit Descriptor Settings for eop descriptor */
	adapter->txd_cmd = E1000_ADVTXD_DCMD_EOP | E1000_ADVTXD_DCMD_IFCS;

	/* enable Report Status bit */
	adapter->txd_cmd |= E1000_ADVTXD_DCMD_RS;
}