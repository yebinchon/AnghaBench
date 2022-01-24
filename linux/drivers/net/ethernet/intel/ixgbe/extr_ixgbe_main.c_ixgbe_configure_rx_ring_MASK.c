#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_8__ {TYPE_2__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_3__ wb; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct ixgbe_rx_buffer {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  free; } ;
struct ixgbe_ring {int dma; int count; int rx_buf_len; TYPE_5__* xsk_umem; int /*<<< orphan*/  rx_buffer_info; int /*<<< orphan*/  state; scalar_t__ tail; int /*<<< orphan*/  xdp_rxq; TYPE_4__ zca; int /*<<< orphan*/  reg_idx; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {scalar_t__ io_addr; struct ixgbe_hw hw; } ;
struct TYPE_10__ {int chunk_size_nohr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IXGBE_MAX_2K_FRAME_BUILD_SKB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ixgbe_hw*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int IXGBE_RXDCTL_RLPMLMASK ; 
 int IXGBE_RXDCTL_RLPML_EN ; 
 union ixgbe_adv_rx_desc* FUNC8 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  MEM_TYPE_PAGE_SHARED ; 
 int /*<<< orphan*/  MEM_TYPE_ZERO_COPY ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int XDP_PACKET_HEADROOM ; 
 int /*<<< orphan*/  __IXGBE_RX_3K_BUFFER ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_ring*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 scalar_t__ ixgbe_mac_82599EB ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 TYPE_5__* FUNC18 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  ixgbe_zca_free ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

void FUNC24(struct ixgbe_adapter *adapter,
			     struct ixgbe_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	union ixgbe_adv_rx_desc *rx_desc;
	u64 rdba = ring->dma;
	u32 rxdctl;
	u8 reg_idx = ring->reg_idx;

	FUNC23(&ring->xdp_rxq);
	ring->xsk_umem = FUNC18(adapter, ring);
	if (ring->xsk_umem) {
		ring->zca.free = ixgbe_zca_free;
		FUNC11(FUNC22(&ring->xdp_rxq,
						   MEM_TYPE_ZERO_COPY,
						   &ring->zca));

	} else {
		FUNC11(FUNC22(&ring->xdp_rxq,
						   MEM_TYPE_PAGE_SHARED, NULL));
	}

	/* disable queue to avoid use of these values while updating state */
	rxdctl = FUNC6(hw, FUNC7(reg_idx));
	rxdctl &= ~IXGBE_RXDCTL_ENABLE;

	/* write value back with RXDCTL.ENABLE bit cleared */
	FUNC10(hw, FUNC7(reg_idx), rxdctl);
	FUNC9(hw);

	FUNC10(hw, FUNC2(reg_idx), (rdba & FUNC0(32)));
	FUNC10(hw, FUNC1(reg_idx), (rdba >> 32));
	FUNC10(hw, FUNC4(reg_idx),
			ring->count * sizeof(union ixgbe_adv_rx_desc));
	/* Force flushing of IXGBE_RDLEN to prevent MDD */
	FUNC9(hw);

	FUNC10(hw, FUNC3(reg_idx), 0);
	FUNC10(hw, FUNC5(reg_idx), 0);
	ring->tail = adapter->io_addr + FUNC5(reg_idx);

	FUNC15(adapter, ring);
	FUNC14(adapter, ring);

	if (hw->mac.type == ixgbe_mac_82598EB) {
		/*
		 * enable cache line friendly hardware writes:
		 * PTHRESH=32 descriptors (half the internal cache),
		 * this also removes ugly rx_no_buffer_count increment
		 * HTHRESH=4 descriptors (to minimize latency on fetch)
		 * WTHRESH=8 burst writeback up to two cache lines
		 */
		rxdctl &= ~0x3FFFFF;
		rxdctl |=  0x080420;
#if (PAGE_SIZE < 8192)
	/* RXDCTL.RLPML does not work on 82599 */
	} else if (hw->mac.type != ixgbe_mac_82599EB) {
		rxdctl &= ~(IXGBE_RXDCTL_RLPMLMASK |
			    IXGBE_RXDCTL_RLPML_EN);

		/* Limit the maximum frame size so we don't overrun the skb.
		 * This can happen in SRIOV mode when the MTU of the VF is
		 * higher than the MTU of the PF.
		 */
		if (FUNC20(ring) &&
		    !FUNC21(__IXGBE_RX_3K_BUFFER, &ring->state))
			rxdctl |= IXGBE_MAX_2K_FRAME_BUILD_SKB |
				  IXGBE_RXDCTL_RLPML_EN;
#endif
	}

	if (ring->xsk_umem && hw->mac.type != ixgbe_mac_82599EB) {
		u32 xsk_buf_len = ring->xsk_umem->chunk_size_nohr -
				  XDP_PACKET_HEADROOM;

		rxdctl &= ~(IXGBE_RXDCTL_RLPMLMASK |
			    IXGBE_RXDCTL_RLPML_EN);
		rxdctl |= xsk_buf_len | IXGBE_RXDCTL_RLPML_EN;

		ring->rx_buf_len = xsk_buf_len;
	}

	/* initialize rx_buffer_info */
	FUNC19(ring->rx_buffer_info, 0,
	       sizeof(struct ixgbe_rx_buffer) * ring->count);

	/* initialize Rx descriptor 0 */
	rx_desc = FUNC8(ring, 0);
	rx_desc->wb.upper.length = 0;

	/* enable receive descriptor ring */
	rxdctl |= IXGBE_RXDCTL_ENABLE;
	FUNC10(hw, FUNC7(reg_idx), rxdctl);

	FUNC17(adapter, ring);
	if (ring->xsk_umem)
		FUNC13(ring, FUNC16(ring));
	else
		FUNC12(ring, FUNC16(ring));
}