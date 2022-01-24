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
typedef  union e1000_rx_desc_packet_split {int dummy; } e1000_rx_desc_packet_split ;
typedef  union e1000_rx_desc_extended {int dummy; } e1000_rx_desc_extended ;
typedef  int u64 ;
typedef  int u32 ;
struct e1000_ring {int count; int dma; scalar_t__ tail; scalar_t__ head; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_adapter {int flags2; int rx_int_delay; int rx_abs_int_delay; scalar_t__ itr_setting; scalar_t__ itr; int max_frame_size; int flags; int /*<<< orphan*/  pm_qos_req; TYPE_2__* pdev; TYPE_1__* netdev; struct e1000_hw hw; int /*<<< orphan*/  alloc_rx_buf; int /*<<< orphan*/  clean_rx; scalar_t__ rx_ps_pages; struct e1000_ring* rx_ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ mtu; int features; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int FUNC1 (int) ; 
 int E1000_CTRL_EXT_IAME ; 
 int E1000_PBA_RXA_MASK ; 
 int E1000_RCTL_EN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int E1000_RXCSUM_TUOFL ; 
 int E1000_RXDCTL_DMA_BURST_ENABLE ; 
 scalar_t__ ETH_DATA_LEN ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_FRAME_LEN ; 
 int FLAG2_DMA_BURST ; 
 int FLAG2_NO_DISABLE_RX ; 
 int FLAG2_PCIM2PCI_ARBITER_WA ; 
 int FLAG_IS_ICH ; 
 int /*<<< orphan*/  IAM ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  PBA ; 
 int PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  RADV ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  RXCSUM ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  e1000_alloc_jumbo_rx_buffers ; 
 int /*<<< orphan*/  e1000_alloc_rx_buffers ; 
 int /*<<< orphan*/  e1000_alloc_rx_buffers_ps ; 
 int /*<<< orphan*/  e1000_clean_jumbo_rx_irq ; 
 int /*<<< orphan*/  e1000_clean_rx_irq ; 
 int /*<<< orphan*/  e1000_clean_rx_irq_ps ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC19(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_ring *rx_ring = adapter->rx_ring;
	u64 rdba;
	u32 rdlen, rctl, rxcsum, ctrl_ext;

	if (adapter->rx_ps_pages) {
		/* this is a 32 byte descriptor */
		rdlen = rx_ring->count *
		    sizeof(union e1000_rx_desc_packet_split);
		adapter->clean_rx = e1000_clean_rx_irq_ps;
		adapter->alloc_rx_buf = e1000_alloc_rx_buffers_ps;
	} else if (adapter->netdev->mtu > ETH_FRAME_LEN + ETH_FCS_LEN) {
		rdlen = rx_ring->count * sizeof(union e1000_rx_desc_extended);
		adapter->clean_rx = e1000_clean_jumbo_rx_irq;
		adapter->alloc_rx_buf = e1000_alloc_jumbo_rx_buffers;
	} else {
		rdlen = rx_ring->count * sizeof(union e1000_rx_desc_extended);
		adapter->clean_rx = e1000_clean_rx_irq;
		adapter->alloc_rx_buf = e1000_alloc_rx_buffers;
	}

	/* disable receives while setting up the descriptors */
	rctl = FUNC14(RCTL);
	if (!(adapter->flags2 & FLAG2_NO_DISABLE_RX))
		FUNC15(RCTL, rctl & ~E1000_RCTL_EN);
	FUNC13();
	FUNC17(10000, 11000);

	if (adapter->flags2 & FLAG2_DMA_BURST) {
		/* set the writeback threshold (only takes effect if the RDTR
		 * is set). set GRAN=1 and write back up to 0x4 worth, and
		 * enable prefetching of 0x20 Rx descriptors
		 * granularity = 01
		 * wthresh = 04,
		 * hthresh = 04,
		 * pthresh = 0x20
		 */
		FUNC15(FUNC9(0), E1000_RXDCTL_DMA_BURST_ENABLE);
		FUNC15(FUNC9(1), E1000_RXDCTL_DMA_BURST_ENABLE);
	}

	/* set the Receive Delay Timer Register */
	FUNC15(RDTR, adapter->rx_int_delay);

	/* irq moderation */
	FUNC15(RADV, adapter->rx_abs_int_delay);
	if ((adapter->itr_setting != 0) && (adapter->itr != 0))
		FUNC12(adapter, adapter->itr);

	ctrl_ext = FUNC14(CTRL_EXT);
	/* Auto-Mask interrupts upon ICR access */
	ctrl_ext |= E1000_CTRL_EXT_IAME;
	FUNC15(IAM, 0xffffffff);
	FUNC15(CTRL_EXT, ctrl_ext);
	FUNC13();

	/* Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring
	 */
	rdba = rx_ring->dma;
	FUNC15(FUNC5(0), (rdba & FUNC1(32)));
	FUNC15(FUNC4(0), (rdba >> 32));
	FUNC15(FUNC7(0), rdlen);
	FUNC15(FUNC6(0), 0);
	FUNC15(FUNC8(0), 0);
	rx_ring->head = adapter->hw.hw_addr + FUNC2(0);
	rx_ring->tail = adapter->hw.hw_addr + FUNC3(0);

	FUNC18(0, rx_ring->head);
	if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
		FUNC11(rx_ring, 0);
	else
		FUNC18(0, rx_ring->tail);

	/* Enable Receive Checksum Offload for TCP and UDP */
	rxcsum = FUNC14(RXCSUM);
	if (adapter->netdev->features & NETIF_F_RXCSUM)
		rxcsum |= E1000_RXCSUM_TUOFL;
	else
		rxcsum &= ~E1000_RXCSUM_TUOFL;
	FUNC15(RXCSUM, rxcsum);

	/* With jumbo frames, excessive C-state transition latencies result
	 * in dropped transactions.
	 */
	if (adapter->netdev->mtu > ETH_DATA_LEN) {
		u32 lat =
		    ((FUNC14(PBA) & E1000_PBA_RXA_MASK) * 1024 -
		     adapter->max_frame_size) * 8 / 1000;

		if (adapter->flags & FLAG_IS_ICH) {
			u32 rxdctl = FUNC14(FUNC9(0));

			FUNC15(FUNC9(0), rxdctl | 0x3 | FUNC0(8));
		}

		FUNC10(&adapter->pdev->dev,
			 "Some CPU C-states have been disabled in order to enable jumbo frames\n");
		FUNC16(&adapter->pm_qos_req, lat);
	} else {
		FUNC16(&adapter->pm_qos_req,
				      PM_QOS_DEFAULT_VALUE);
	}

	/* Enable Receives */
	FUNC15(RCTL, rctl);
}