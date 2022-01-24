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
typedef  int u64 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  data; } ;
struct ice_tx_offload_params {int td_l2tag1; int td_cmd; int td_offset; } ;
struct ice_tx_desc {void* cmd_type_offset_bsz; void* buf_addr; } ;
struct ice_tx_buf {int tx_flags; struct ice_tx_desc* next_to_watch; struct sk_buff* skb; int /*<<< orphan*/  bytecount; } ;
struct ice_ring {size_t next_to_use; size_t count; struct ice_tx_buf* tx_buf; int /*<<< orphan*/  tail; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_NEEDED ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int ICE_MAX_DATA_PER_TXD ; 
 unsigned int ICE_MAX_DATA_PER_TXD_ALIGNED ; 
 int ICE_MAX_READ_REQ_SIZE ; 
 struct ice_tx_desc* FUNC0 (struct ice_ring*,size_t) ; 
 int ICE_TX_DESC_CMD_EOP ; 
 scalar_t__ ICE_TX_DESC_CMD_IL2TAG1 ; 
 int ICE_TX_DESC_CMD_RS ; 
 int ICE_TX_FLAGS_HW_VLAN ; 
 int ICE_TX_FLAGS_VLAN_M ; 
 int ICE_TX_FLAGS_VLAN_S ; 
 void* FUNC1 (int,int,unsigned int,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_tx_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_tx_buf*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ice_ring*,struct ice_tx_buf*) ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC15 (struct sk_buff*) ; 
 TYPE_1__* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct ice_ring*) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(struct ice_ring *tx_ring, struct ice_tx_buf *first,
	   struct ice_tx_offload_params *off)
{
	u64 td_offset, td_tag, td_cmd;
	u16 i = tx_ring->next_to_use;
	skb_frag_t *frag;
	unsigned int data_len, size;
	struct ice_tx_desc *tx_desc;
	struct ice_tx_buf *tx_buf;
	struct sk_buff *skb;
	dma_addr_t dma;

	td_tag = off->td_l2tag1;
	td_cmd = off->td_cmd;
	td_offset = off->td_offset;
	skb = first->skb;

	data_len = skb->data_len;
	size = FUNC15(skb);

	tx_desc = FUNC0(tx_ring, i);

	if (first->tx_flags & ICE_TX_FLAGS_HW_VLAN) {
		td_cmd |= (u64)ICE_TX_DESC_CMD_IL2TAG1;
		td_tag = (first->tx_flags & ICE_TX_FLAGS_VLAN_M) >>
			  ICE_TX_FLAGS_VLAN_S;
	}

	dma = FUNC3(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);

	tx_buf = first;

	for (frag = &FUNC16(skb)->frags[0];; frag++) {
		unsigned int max_data = ICE_MAX_DATA_PER_TXD_ALIGNED;

		if (FUNC4(tx_ring->dev, dma))
			goto dma_error;

		/* record length, and DMA address */
		FUNC6(tx_buf, len, size);
		FUNC5(tx_buf, dma, dma);

		/* align size to end of page */
		max_data += -dma & (ICE_MAX_READ_REQ_SIZE - 1);
		tx_desc->buf_addr = FUNC2(dma);

		/* account for data chunks larger than the hardware
		 * can handle
		 */
		while (FUNC19(size > ICE_MAX_DATA_PER_TXD)) {
			tx_desc->cmd_type_offset_bsz =
				FUNC1(td_cmd, td_offset, max_data, td_tag);

			tx_desc++;
			i++;

			if (i == tx_ring->count) {
				tx_desc = FUNC0(tx_ring, 0);
				i = 0;
			}

			dma += max_data;
			size -= max_data;

			max_data = ICE_MAX_DATA_PER_TXD_ALIGNED;
			tx_desc->buf_addr = FUNC2(dma);
		}

		if (FUNC9(!data_len))
			break;

		tx_desc->cmd_type_offset_bsz = FUNC1(td_cmd, td_offset,
							  size, td_tag);

		tx_desc++;
		i++;

		if (i == tx_ring->count) {
			tx_desc = FUNC0(tx_ring, 0);
			i = 0;
		}

		size = FUNC14(frag);
		data_len -= size;

		dma = FUNC13(tx_ring->dev, frag, 0, size,
				       DMA_TO_DEVICE);

		tx_buf = &tx_ring->tx_buf[i];
	}

	/* record bytecount for BQL */
	FUNC10(FUNC18(tx_ring), first->bytecount);

	/* record SW timestamp if HW timestamp is not available */
	FUNC17(first->skb);

	i++;
	if (i == tx_ring->count)
		i = 0;

	/* write last descriptor with RS and EOP bits */
	td_cmd |= (u64)(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS);
	tx_desc->cmd_type_offset_bsz =
			FUNC1(td_cmd, td_offset, size, td_tag);

	/* Force memory writes to complete before letting h/w know there
	 * are new descriptors to fetch.
	 *
	 * We also use this memory barrier to make certain all of the
	 * status bits have been updated before next_to_watch is written.
	 */
	FUNC20();

	/* set next_to_watch value indicating a packet is present */
	first->next_to_watch = tx_desc;

	tx_ring->next_to_use = i;

	FUNC7(tx_ring, DESC_NEEDED);

	/* notify HW of packet */
	if (FUNC12(FUNC18(tx_ring)) || !FUNC11()) {
		FUNC21(i, tx_ring->tail);
	}

	return;

dma_error:
	/* clear DMA mappings for failed tx_buf map */
	for (;;) {
		tx_buf = &tx_ring->tx_buf[i];
		FUNC8(tx_ring, tx_buf);
		if (tx_buf == first)
			break;
		if (i == 0)
			i = tx_ring->count;
		i--;
	}

	tx_ring->next_to_use = i;
}