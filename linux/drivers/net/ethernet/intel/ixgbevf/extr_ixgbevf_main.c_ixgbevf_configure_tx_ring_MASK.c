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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {int dma; int count; int /*<<< orphan*/  state; int /*<<< orphan*/  tx_buffer_info; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ tail; int /*<<< orphan*/  reg_idx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {scalar_t__ io_addr; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IXGBE_DCA_TXCTRL_DATA_RRO_EN ; 
 int IXGBE_DCA_TXCTRL_DESC_RRO_EN ; 
 int FUNC1 (struct ixgbe_hw*,scalar_t__) ; 
 int IXGBE_TXDCTL_ENABLE ; 
 int IXGBE_TXDCTL_SWFLSH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  __IXGBEVF_HANG_CHECK_ARMED ; 
 int /*<<< orphan*/  __IXGBEVF_TX_XDP_RING_PRIMED ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbe_hw*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static void FUNC17(struct ixgbevf_adapter *adapter,
				      struct ixgbevf_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u64 tdba = ring->dma;
	int wait_loop = 10;
	u32 txdctl = IXGBE_TXDCTL_ENABLE;
	u8 reg_idx = ring->reg_idx;

	/* disable queue to avoid issues while updating state */
	FUNC12(hw, FUNC10(reg_idx), IXGBE_TXDCTL_SWFLSH);
	FUNC11(hw);

	FUNC12(hw, FUNC4(reg_idx), tdba & FUNC0(32));
	FUNC12(hw, FUNC3(reg_idx), tdba >> 32);
	FUNC12(hw, FUNC6(reg_idx),
			ring->count * sizeof(union ixgbe_adv_tx_desc));

	/* disable head writeback */
	FUNC12(hw, FUNC8(reg_idx), 0);
	FUNC12(hw, FUNC9(reg_idx), 0);

	/* enable relaxed ordering */
	FUNC12(hw, FUNC2(reg_idx),
			(IXGBE_DCA_TXCTRL_DESC_RRO_EN |
			 IXGBE_DCA_TXCTRL_DATA_RRO_EN));

	/* reset head and tail pointers */
	FUNC12(hw, FUNC5(reg_idx), 0);
	FUNC12(hw, FUNC7(reg_idx), 0);
	ring->tail = adapter->io_addr + FUNC7(reg_idx);

	/* reset ntu and ntc to place SW in sync with hardwdare */
	ring->next_to_clean = 0;
	ring->next_to_use = 0;

	/* In order to avoid issues WTHRESH + PTHRESH should always be equal
	 * to or less than the number of on chip descriptors, which is
	 * currently 40.
	 */
	txdctl |= (8 << 16);    /* WTHRESH = 8 */

	/* Setting PTHRESH to 32 both improves performance */
	txdctl |= (1u << 8) |    /* HTHRESH = 1 */
		   32;           /* PTHRESH = 32 */

	/* reinitialize tx_buffer_info */
	FUNC15(ring->tx_buffer_info, 0,
	       sizeof(struct ixgbevf_tx_buffer) * ring->count);

	FUNC13(__IXGBEVF_HANG_CHECK_ARMED, &ring->state);
	FUNC13(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);

	FUNC12(hw, FUNC10(reg_idx), txdctl);

	/* poll to verify queue is enabled */
	do {
		FUNC16(1000, 2000);
		txdctl = FUNC1(hw, FUNC10(reg_idx));
	}  while (--wait_loop && !(txdctl & IXGBE_TXDCTL_ENABLE));
	if (!wait_loop)
		FUNC14(hw, "Could not enable Tx Queue %d\n", reg_idx);
}