#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct ixgbevf_rx_buffer {int dummy; } ;
struct ixgbevf_ring {int dma; int count; scalar_t__ next_to_alloc; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/  rx_buffer_info; scalar_t__ tail; int /*<<< orphan*/  reg_idx; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; scalar_t__ io_addr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IXGBEVF_MAX_FRAME_BUILD_SKB ; 
 union ixgbe_adv_rx_desc* FUNC1 (struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 int IXGBE_DCA_RXCTRL_DATA_WRO_EN ; 
 int IXGBE_DCA_RXCTRL_DESC_RRO_EN ; 
 int FUNC2 (struct ixgbe_hw*,scalar_t__) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int IXGBE_RXDCTL_RLPMLMASK ; 
 int IXGBE_RXDCTL_RLPML_EN ; 
 int IXGBE_RXDCTL_VME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,scalar_t__,int) ; 
 scalar_t__ ixgbe_mac_82599_vf ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbevf_adapter*,struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbevf_adapter*,struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbevf_adapter*,struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC18 (struct ixgbevf_ring*) ; 

__attribute__((used)) static void FUNC19(struct ixgbevf_adapter *adapter,
				      struct ixgbevf_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	union ixgbe_adv_rx_desc *rx_desc;
	u64 rdba = ring->dma;
	u32 rxdctl;
	u8 reg_idx = ring->reg_idx;

	/* disable queue to avoid issues while updating state */
	rxdctl = FUNC2(hw, FUNC9(reg_idx));
	FUNC14(adapter, ring);

	FUNC10(hw, FUNC5(reg_idx), rdba & FUNC0(32));
	FUNC10(hw, FUNC4(reg_idx), rdba >> 32);
	FUNC10(hw, FUNC7(reg_idx),
			ring->count * sizeof(union ixgbe_adv_rx_desc));

#ifndef CONFIG_SPARC
	/* enable relaxed ordering */
	FUNC10(hw, FUNC3(reg_idx),
			IXGBE_DCA_RXCTRL_DESC_RRO_EN);
#else
	IXGBE_WRITE_REG(hw, IXGBE_VFDCA_RXCTRL(reg_idx),
			IXGBE_DCA_RXCTRL_DESC_RRO_EN |
			IXGBE_DCA_RXCTRL_DATA_WRO_EN);
#endif

	/* reset head and tail pointers */
	FUNC10(hw, FUNC6(reg_idx), 0);
	FUNC10(hw, FUNC8(reg_idx), 0);
	ring->tail = adapter->io_addr + FUNC8(reg_idx);

	/* initialize rx_buffer_info */
	FUNC16(ring->rx_buffer_info, 0,
	       sizeof(struct ixgbevf_rx_buffer) * ring->count);

	/* initialize Rx descriptor 0 */
	rx_desc = FUNC1(ring, 0);
	rx_desc->wb.upper.length = 0;

	/* reset ntu and ntc to place SW in sync with hardwdare */
	ring->next_to_clean = 0;
	ring->next_to_use = 0;
	ring->next_to_alloc = 0;

	FUNC12(adapter, ring, reg_idx);

	/* RXDCTL.RLPML does not work on 82599 */
	if (adapter->hw.mac.type != ixgbe_mac_82599_vf) {
		rxdctl &= ~(IXGBE_RXDCTL_RLPMLMASK |
			    IXGBE_RXDCTL_RLPML_EN);

#if (PAGE_SIZE < 8192)
		/* Limit the maximum frame size so we don't overrun the skb */
		if (FUNC17(ring) &&
		    !FUNC18(ring))
			rxdctl |= IXGBEVF_MAX_FRAME_BUILD_SKB |
				  IXGBE_RXDCTL_RLPML_EN;
#endif
	}

	rxdctl |= IXGBE_RXDCTL_ENABLE | IXGBE_RXDCTL_VME;
	FUNC10(hw, FUNC9(reg_idx), rxdctl);

	FUNC15(adapter, ring);
	FUNC11(ring, FUNC13(ring));
}