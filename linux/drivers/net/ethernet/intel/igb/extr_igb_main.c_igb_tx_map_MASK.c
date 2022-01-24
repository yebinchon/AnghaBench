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
struct TYPE_3__ {void* cmd_type_len; scalar_t__ olinfo_status; void* buffer_addr; } ;
union e1000_adv_tx_desc {TYPE_1__ read; } ;
typedef  scalar_t__ u8 ;
typedef  unsigned int u32 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  data; scalar_t__ const len; } ;
struct igb_tx_buffer {unsigned int tx_flags; struct sk_buff* skb; union e1000_adv_tx_desc* next_to_watch; int /*<<< orphan*/  time_stamp; int /*<<< orphan*/  bytecount; } ;
struct igb_ring {size_t next_to_use; size_t count; int /*<<< orphan*/  dev; struct igb_tx_buffer* tx_buffer_info; int /*<<< orphan*/  tail; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  unsigned int dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_NEEDED ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int IGB_MAX_DATA_PER_TXD ; 
 unsigned int IGB_TXD_DCMD ; 
 union e1000_adv_tx_desc* FUNC0 (struct igb_ring*,size_t) ; 
 void* FUNC1 (unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_tx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct igb_tx_buffer*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct igb_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct igb_tx_buffer*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct igb_ring*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct igb_ring*,union e1000_adv_tx_desc*,unsigned int,scalar_t__ const) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC23 (struct sk_buff*) ; 
 TYPE_2__* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct igb_ring*) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct igb_ring *tx_ring,
		      struct igb_tx_buffer *first,
		      const u8 hdr_len)
{
	struct sk_buff *skb = first->skb;
	struct igb_tx_buffer *tx_buffer;
	union e1000_adv_tx_desc *tx_desc;
	skb_frag_t *frag;
	dma_addr_t dma;
	unsigned int data_len, size;
	u32 tx_flags = first->tx_flags;
	u32 cmd_type = FUNC15(skb, tx_flags);
	u16 i = tx_ring->next_to_use;

	tx_desc = FUNC0(tx_ring, i);

	FUNC16(tx_ring, tx_desc, tx_flags, skb->len - hdr_len);

	size = FUNC23(skb);
	data_len = skb->data_len;

	dma = FUNC5(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);

	tx_buffer = first;

	for (frag = &FUNC24(skb)->frags[0];; frag++) {
		if (FUNC6(tx_ring->dev, dma))
			goto dma_error;

		/* record length, and DMA address */
		FUNC10(tx_buffer, len, size);
		FUNC8(tx_buffer, dma, dma);

		tx_desc->read.buffer_addr = FUNC2(dma);

		while (FUNC27(size > IGB_MAX_DATA_PER_TXD)) {
			tx_desc->read.cmd_type_len =
				FUNC1(cmd_type ^ IGB_MAX_DATA_PER_TXD);

			i++;
			tx_desc++;
			if (i == tx_ring->count) {
				tx_desc = FUNC0(tx_ring, 0);
				i = 0;
			}
			tx_desc->read.olinfo_status = 0;

			dma += IGB_MAX_DATA_PER_TXD;
			size -= IGB_MAX_DATA_PER_TXD;

			tx_desc->read.buffer_addr = FUNC2(dma);
		}

		if (FUNC17(!data_len))
			break;

		tx_desc->read.cmd_type_len = FUNC1(cmd_type ^ size);

		i++;
		tx_desc++;
		if (i == tx_ring->count) {
			tx_desc = FUNC0(tx_ring, 0);
			i = 0;
		}
		tx_desc->read.olinfo_status = 0;

		size = FUNC22(frag);
		data_len -= size;

		dma = FUNC21(tx_ring->dev, frag, 0,
				       size, DMA_TO_DEVICE);

		tx_buffer = &tx_ring->tx_buffer_info[i];
	}

	/* write last descriptor with RS and EOP bits */
	cmd_type |= size | IGB_TXD_DCMD;
	tx_desc->read.cmd_type_len = FUNC1(cmd_type);

	FUNC18(FUNC26(tx_ring), first->bytecount);

	/* set the timestamp */
	first->time_stamp = jiffies;

	FUNC25(skb);

	/* Force memory writes to complete before letting h/w know there
	 * are new descriptors to fetch.  (Only applicable for weak-ordered
	 * memory model archs, such as IA-64).
	 *
	 * We also need this memory barrier to make certain all of the
	 * status bits have been updated before next_to_watch is written.
	 */
	FUNC13();

	/* set next_to_watch value indicating a packet is present */
	first->next_to_watch = tx_desc;

	i++;
	if (i == tx_ring->count)
		i = 0;

	tx_ring->next_to_use = i;

	/* Make sure there is space in the ring for the next send. */
	FUNC14(tx_ring, DESC_NEEDED);

	if (FUNC20(FUNC26(tx_ring)) || !FUNC19()) {
		FUNC28(i, tx_ring->tail);
	}
	return 0;

dma_error:
	FUNC3(tx_ring->dev, "TX DMA map failed\n");
	tx_buffer = &tx_ring->tx_buffer_info[i];

	/* clear dma mappings for failed tx_buffer_info map */
	while (tx_buffer != first) {
		if (FUNC9(tx_buffer, len))
			FUNC11(tx_ring->dev,
				       FUNC7(tx_buffer, dma),
				       FUNC9(tx_buffer, len),
				       DMA_TO_DEVICE);
		FUNC10(tx_buffer, len, 0);

		if (i-- == 0)
			i += tx_ring->count;
		tx_buffer = &tx_ring->tx_buffer_info[i];
	}

	if (FUNC9(tx_buffer, len))
		FUNC12(tx_ring->dev,
				 FUNC7(tx_buffer, dma),
				 FUNC9(tx_buffer, len),
				 DMA_TO_DEVICE);
	FUNC10(tx_buffer, len, 0);

	FUNC4(tx_buffer->skb);
	tx_buffer->skb = NULL;

	tx_ring->next_to_use = i;

	return -1;
}