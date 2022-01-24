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
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__ upper; } ;
union e1000_adv_rx_desc {TYPE_3__ wb; } ;
typedef  int u64 ;
typedef  int u32 ;
struct igb_rx_buffer {int dummy; } ;
struct igb_ring {int dma; int reg_idx; int count; int /*<<< orphan*/  rx_buffer_info; scalar_t__ tail; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int num_rx_queues; scalar_t__ vfs_allocated_count; scalar_t__ io_addr; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int E1000_RXDCTL_QUEUE_ENABLE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int E1000_SRRCTL_BSIZEHDRSIZE_SHIFT ; 
 int E1000_SRRCTL_BSIZEPKT_SHIFT ; 
 int E1000_SRRCTL_DESCTYPE_ADV_ONEBUF ; 
 int E1000_SRRCTL_DROP_EN ; 
 int E1000_SRRCTL_TIMESTAMP ; 
 int IGB_RXBUFFER_2048 ; 
 int IGB_RXBUFFER_3072 ; 
 union e1000_adv_rx_desc* FUNC7 (struct igb_ring*,int /*<<< orphan*/ ) ; 
 int IGB_RX_HDR_LEN ; 
 int IGB_RX_HTHRESH ; 
 int IGB_RX_PTHRESH ; 
 int IGB_RX_WTHRESH ; 
 scalar_t__ e1000_82580 ; 
 int /*<<< orphan*/  FUNC8 (struct igb_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC13(struct igb_adapter *adapter,
			   struct igb_ring *ring)
{
	struct e1000_hw *hw = &adapter->hw;
	union e1000_adv_rx_desc *rx_desc;
	u64 rdba = ring->dma;
	int reg_idx = ring->reg_idx;
	u32 srrctl = 0, rxdctl = 0;

	/* disable the queue */
	FUNC11(FUNC5(reg_idx), 0);

	/* Set DMA base address registers */
	FUNC11(FUNC1(reg_idx),
	     rdba & 0x00000000ffffffffULL);
	FUNC11(FUNC0(reg_idx), rdba >> 32);
	FUNC11(FUNC3(reg_idx),
	     ring->count * sizeof(union e1000_adv_rx_desc));

	/* initialize head and tail */
	ring->tail = adapter->io_addr + FUNC4(reg_idx);
	FUNC11(FUNC2(reg_idx), 0);
	FUNC12(0, ring->tail);

	/* set descriptor configuration */
	srrctl = IGB_RX_HDR_LEN << E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
	if (FUNC10(ring))
		srrctl |= IGB_RXBUFFER_3072 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
	else
		srrctl |= IGB_RXBUFFER_2048 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
	srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
	if (hw->mac.type >= e1000_82580)
		srrctl |= E1000_SRRCTL_TIMESTAMP;
	/* Only set Drop Enable if we are supporting multiple queues */
	if (adapter->vfs_allocated_count || adapter->num_rx_queues > 1)
		srrctl |= E1000_SRRCTL_DROP_EN;

	FUNC11(FUNC6(reg_idx), srrctl);

	/* set filtering for VMDQ pools */
	FUNC8(adapter, reg_idx & 0x7, true);

	rxdctl |= IGB_RX_PTHRESH;
	rxdctl |= IGB_RX_HTHRESH << 8;
	rxdctl |= IGB_RX_WTHRESH << 16;

	/* initialize rx_buffer_info */
	FUNC9(ring->rx_buffer_info, 0,
	       sizeof(struct igb_rx_buffer) * ring->count);

	/* initialize Rx descriptor 0 */
	rx_desc = FUNC7(ring, 0);
	rx_desc->wb.upper.length = 0;

	/* enable receive descriptor fetching */
	rxdctl |= E1000_RXDCTL_QUEUE_ENABLE;
	FUNC11(FUNC5(reg_idx), rxdctl);
}