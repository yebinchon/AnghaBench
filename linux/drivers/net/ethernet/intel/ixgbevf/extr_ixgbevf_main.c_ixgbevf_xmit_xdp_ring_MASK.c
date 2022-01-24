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
struct TYPE_2__ {void* olinfo_status; void* cmd_type_len; int /*<<< orphan*/  buffer_addr; } ;
union ixgbe_adv_tx_desc {TYPE_1__ read; } ;
typedef  int u32 ;
typedef  size_t u16 ;
struct xdp_buff {int data_end; int data; } ;
struct ixgbevf_tx_buffer {int data; int bytecount; int gso_segs; union ixgbe_adv_tx_desc* next_to_watch; scalar_t__ protocol; } ;
struct ixgbevf_ring {size_t next_to_use; size_t count; int /*<<< orphan*/  state; struct ixgbevf_tx_buffer* tx_buffer_info; int /*<<< orphan*/  dev; } ;
struct ixgbe_adv_tx_context_desc {scalar_t__ mss_l4len_idx; void* type_tucmd_mlhl; scalar_t__ fceof_saidx; void* vlan_macip_lens; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETH_HLEN ; 
 struct ixgbe_adv_tx_context_desc* FUNC0 (struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 union ixgbe_adv_tx_desc* FUNC1 (struct ixgbevf_ring*,size_t) ; 
 int IXGBEVF_XDP_CONSUMED ; 
 int IXGBEVF_XDP_TX ; 
 int IXGBE_ADVTXD_CC ; 
 int IXGBE_ADVTXD_DCMD_DEXT ; 
 int IXGBE_ADVTXD_DCMD_IFCS ; 
 int IXGBE_ADVTXD_DTYP_CTXT ; 
 int IXGBE_ADVTXD_DTYP_DATA ; 
 int IXGBE_ADVTXD_MACLEN_SHIFT ; 
 int IXGBE_ADVTXD_PAYLEN_SHIFT ; 
 int IXGBE_TXD_CMD ; 
 int IXGBE_TXD_CMD_DEXT ; 
 int /*<<< orphan*/  __IXGBEVF_TX_XDP_RING_PRIMED ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_tx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_tx_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct ixgbevf_ring *ring,
				 struct xdp_buff *xdp)
{
	struct ixgbevf_tx_buffer *tx_buffer;
	union ixgbe_adv_tx_desc *tx_desc;
	u32 len, cmd_type;
	dma_addr_t dma;
	u16 i;

	len = xdp->data_end - xdp->data;

	if (FUNC12(!FUNC8(ring)))
		return IXGBEVF_XDP_CONSUMED;

	dma = FUNC4(ring->dev, xdp->data, len, DMA_TO_DEVICE);
	if (FUNC5(ring->dev, dma))
		return IXGBEVF_XDP_CONSUMED;

	/* record the location of the first descriptor for this packet */
	i = ring->next_to_use;
	tx_buffer = &ring->tx_buffer_info[i];

	FUNC7(tx_buffer, len, len);
	FUNC6(tx_buffer, dma, dma);
	tx_buffer->data = xdp->data;
	tx_buffer->bytecount = len;
	tx_buffer->gso_segs = 1;
	tx_buffer->protocol = 0;

	/* Populate minimal context descriptor that will provide for the
	 * fact that we are expected to process Ethernet frames.
	 */
	if (!FUNC11(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state)) {
		struct ixgbe_adv_tx_context_desc *context_desc;

		FUNC9(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);

		context_desc = FUNC0(ring, 0);
		context_desc->vlan_macip_lens	=
			FUNC2(ETH_HLEN << IXGBE_ADVTXD_MACLEN_SHIFT);
		context_desc->fceof_saidx	= 0;
		context_desc->type_tucmd_mlhl	=
			FUNC2(IXGBE_TXD_CMD_DEXT |
				    IXGBE_ADVTXD_DTYP_CTXT);
		context_desc->mss_l4len_idx	= 0;

		i = 1;
	}

	/* put descriptor type bits */
	cmd_type = IXGBE_ADVTXD_DTYP_DATA |
		   IXGBE_ADVTXD_DCMD_DEXT |
		   IXGBE_ADVTXD_DCMD_IFCS;
	cmd_type |= len | IXGBE_TXD_CMD;

	tx_desc = FUNC1(ring, i);
	tx_desc->read.buffer_addr = FUNC3(dma);

	tx_desc->read.cmd_type_len = FUNC2(cmd_type);
	tx_desc->read.olinfo_status =
			FUNC2((len << IXGBE_ADVTXD_PAYLEN_SHIFT) |
				    IXGBE_ADVTXD_CC);

	/* Avoid any potential race with cleanup */
	FUNC10();

	/* set next_to_watch value indicating a packet is present */
	i++;
	if (i == ring->count)
		i = 0;

	tx_buffer->next_to_watch = tx_desc;
	ring->next_to_use = i;

	return IXGBEVF_XDP_TX;
}