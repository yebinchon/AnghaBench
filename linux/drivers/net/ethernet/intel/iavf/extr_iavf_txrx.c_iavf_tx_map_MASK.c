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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  data; } ;
struct iavf_tx_desc {void* cmd_type_offset_bsz; void* buffer_addr; } ;
struct iavf_tx_buffer {int tx_flags; struct iavf_tx_desc* next_to_watch; int /*<<< orphan*/  bytecount; } ;
struct iavf_ring {size_t next_to_use; size_t count; struct iavf_tx_buffer* tx_bi; int /*<<< orphan*/  dev; int /*<<< orphan*/  tail; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_NEEDED ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int IAVF_MAX_DATA_PER_TXD ; 
 unsigned int IAVF_MAX_DATA_PER_TXD_ALIGNED ; 
 int IAVF_MAX_READ_REQ_SIZE ; 
 int IAVF_TXD_CMD ; 
 struct iavf_tx_desc* FUNC0 (struct iavf_ring*,size_t) ; 
 int IAVF_TX_DESC_CMD_IL2TAG1 ; 
 int IAVF_TX_FLAGS_HW_VLAN ; 
 int IAVF_TX_FLAGS_VLAN_MASK ; 
 int IAVF_TX_FLAGS_VLAN_SHIFT ; 
 void* FUNC1 (int,int,unsigned int,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iavf_tx_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iavf_tx_buffer*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct iavf_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iavf_ring*,struct iavf_tx_buffer*) ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC16 (struct sk_buff*) ; 
 TYPE_1__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct iavf_ring*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC23(struct iavf_ring *tx_ring, struct sk_buff *skb,
			       struct iavf_tx_buffer *first, u32 tx_flags,
			       const u8 hdr_len, u32 td_cmd, u32 td_offset)
{
	unsigned int data_len = skb->data_len;
	unsigned int size = FUNC16(skb);
	skb_frag_t *frag;
	struct iavf_tx_buffer *tx_bi;
	struct iavf_tx_desc *tx_desc;
	u16 i = tx_ring->next_to_use;
	u32 td_tag = 0;
	dma_addr_t dma;

	if (tx_flags & IAVF_TX_FLAGS_HW_VLAN) {
		td_cmd |= IAVF_TX_DESC_CMD_IL2TAG1;
		td_tag = (tx_flags & IAVF_TX_FLAGS_VLAN_MASK) >>
			 IAVF_TX_FLAGS_VLAN_SHIFT;
	}

	first->tx_flags = tx_flags;

	dma = FUNC4(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);

	tx_desc = FUNC0(tx_ring, i);
	tx_bi = first;

	for (frag = &FUNC17(skb)->frags[0];; frag++) {
		unsigned int max_data = IAVF_MAX_DATA_PER_TXD_ALIGNED;

		if (FUNC5(tx_ring->dev, dma))
			goto dma_error;

		/* record length, and DMA address */
		FUNC7(tx_bi, len, size);
		FUNC6(tx_bi, dma, dma);

		/* align size to end of page */
		max_data += -dma & (IAVF_MAX_READ_REQ_SIZE - 1);
		tx_desc->buffer_addr = FUNC2(dma);

		while (FUNC20(size > IAVF_MAX_DATA_PER_TXD)) {
			tx_desc->cmd_type_offset_bsz =
				FUNC1(td_cmd, td_offset,
					   max_data, td_tag);

			tx_desc++;
			i++;

			if (i == tx_ring->count) {
				tx_desc = FUNC0(tx_ring, 0);
				i = 0;
			}

			dma += max_data;
			size -= max_data;

			max_data = IAVF_MAX_DATA_PER_TXD_ALIGNED;
			tx_desc->buffer_addr = FUNC2(dma);
		}

		if (FUNC10(!data_len))
			break;

		tx_desc->cmd_type_offset_bsz = FUNC1(td_cmd, td_offset,
							  size, td_tag);

		tx_desc++;
		i++;

		if (i == tx_ring->count) {
			tx_desc = FUNC0(tx_ring, 0);
			i = 0;
		}

		size = FUNC15(frag);
		data_len -= size;

		dma = FUNC14(tx_ring->dev, frag, 0, size,
				       DMA_TO_DEVICE);

		tx_bi = &tx_ring->tx_bi[i];
	}

	FUNC11(FUNC19(tx_ring), first->bytecount);

	i++;
	if (i == tx_ring->count)
		i = 0;

	tx_ring->next_to_use = i;

	FUNC8(tx_ring, DESC_NEEDED);

	/* write last descriptor with RS and EOP bits */
	td_cmd |= IAVF_TXD_CMD;
	tx_desc->cmd_type_offset_bsz =
			FUNC1(td_cmd, td_offset, size, td_tag);

	FUNC18(skb);

	/* Force memory writes to complete before letting h/w know there
	 * are new descriptors to fetch.
	 *
	 * We also use this memory barrier to make certain all of the
	 * status bits have been updated before next_to_watch is written.
	 */
	FUNC21();

	/* set next_to_watch value indicating a packet is present */
	first->next_to_watch = tx_desc;

	/* notify HW of packet */
	if (FUNC13(FUNC19(tx_ring)) || !FUNC12()) {
		FUNC22(i, tx_ring->tail);
	}

	return;

dma_error:
	FUNC3(tx_ring->dev, "TX DMA map failed\n");

	/* clear dma mappings for failed tx_bi map */
	for (;;) {
		tx_bi = &tx_ring->tx_bi[i];
		FUNC9(tx_ring, tx_bi);
		if (tx_bi == first)
			break;
		if (i == 0)
			i = tx_ring->count;
		i--;
	}

	tx_ring->next_to_use = i;
}