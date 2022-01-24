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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  unsigned int u32 ;
struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_ring {int dma; int count; int /*<<< orphan*/  tx_buffer_info; int /*<<< orphan*/  state; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  netdev; struct ixgbe_q_vector* q_vector; scalar_t__ atr_sample_rate; scalar_t__ atr_count; scalar_t__ tail; int /*<<< orphan*/ * xsk_umem; int /*<<< orphan*/  reg_idx; } ;
struct ixgbe_q_vector {scalar_t__ itr; int /*<<< orphan*/  affinity_mask; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; scalar_t__ atr_sample_rate; scalar_t__ io_addr; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ IXGBE_100K_ITR ; 
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ; 
 scalar_t__ IXGBE_LINKS ; 
 unsigned int IXGBE_LINKS_UP ; 
 unsigned int FUNC1 (struct ixgbe_hw*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  __IXGBE_HANG_CHECK_ARMED ; 
 int /*<<< orphan*/  __IXGBE_TX_FDIR_INIT_DONE ; 
 int /*<<< orphan*/  __IXGBE_TX_XPS_INIT_DONE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/ * FUNC12 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 

void FUNC19(struct ixgbe_adapter *adapter,
			     struct ixgbe_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u64 tdba = ring->dma;
	int wait_loop = 10;
	u32 txdctl = IXGBE_TXDCTL_ENABLE;
	u8 reg_idx = ring->reg_idx;

	ring->xsk_umem = NULL;
	if (FUNC15(ring))
		ring->xsk_umem = FUNC12(adapter, ring);

	/* disable queue to avoid issues while updating state */
	FUNC9(hw, FUNC7(reg_idx), 0);
	FUNC8(hw);

	FUNC9(hw, FUNC3(reg_idx),
			(tdba & FUNC0(32)));
	FUNC9(hw, FUNC2(reg_idx), (tdba >> 32));
	FUNC9(hw, FUNC5(reg_idx),
			ring->count * sizeof(union ixgbe_adv_tx_desc));
	FUNC9(hw, FUNC4(reg_idx), 0);
	FUNC9(hw, FUNC6(reg_idx), 0);
	ring->tail = adapter->io_addr + FUNC6(reg_idx);

	/*
	 * set WTHRESH to encourage burst writeback, it should not be set
	 * higher than 1 when:
	 * - ITR is 0 as it could cause false TX hangs
	 * - ITR is set to > 100k int/sec and BQL is enabled
	 *
	 * In order to avoid issues WTHRESH + PTHRESH should always be equal
	 * to or less than the number of on chip descriptors, which is
	 * currently 40.
	 */
	if (!ring->q_vector || (ring->q_vector->itr < IXGBE_100K_ITR))
		txdctl |= 1u << 16;	/* WTHRESH = 1 */
	else
		txdctl |= 8u << 16;	/* WTHRESH = 8 */

	/*
	 * Setting PTHRESH to 32 both improves performance
	 * and avoids a TX hang with DFP enabled
	 */
	txdctl |= (1u << 8) |	/* HTHRESH = 1 */
		   32;		/* PTHRESH = 32 */

	/* reinitialize flowdirector state */
	if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
		ring->atr_sample_rate = adapter->atr_sample_rate;
		ring->atr_count = 0;
		FUNC16(__IXGBE_TX_FDIR_INIT_DONE, &ring->state);
	} else {
		ring->atr_sample_rate = 0;
	}

	/* initialize XPS */
	if (!FUNC17(__IXGBE_TX_XPS_INIT_DONE, &ring->state)) {
		struct ixgbe_q_vector *q_vector = ring->q_vector;

		if (q_vector)
			FUNC14(ring->netdev,
					    &q_vector->affinity_mask,
					    ring->queue_index);
	}

	FUNC10(__IXGBE_HANG_CHECK_ARMED, &ring->state);

	/* reinitialize tx_buffer_info */
	FUNC13(ring->tx_buffer_info, 0,
	       sizeof(struct ixgbe_tx_buffer) * ring->count);

	/* enable queue */
	FUNC9(hw, FUNC7(reg_idx), txdctl);

	/* TXDCTL.EN will return 0 on 82598 if link is down, so skip it */
	if (hw->mac.type == ixgbe_mac_82598EB &&
	    !(FUNC1(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
		return;

	/* poll to verify queue is enabled */
	do {
		FUNC18(1000, 2000);
		txdctl = FUNC1(hw, FUNC7(reg_idx));
	} while (--wait_loop && !(txdctl & IXGBE_TXDCTL_ENABLE));
	if (!wait_loop)
		FUNC11(hw, "Could not enable Tx Queue %d\n", reg_idx);
}