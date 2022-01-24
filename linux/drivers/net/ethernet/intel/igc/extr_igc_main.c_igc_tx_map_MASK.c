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
union igc_adv_tx_desc {TYPE_1__ read; } ;
typedef  scalar_t__ u8 ;
typedef  unsigned int u32 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  data; scalar_t__ const len; } ;
struct igc_tx_buffer {unsigned int tx_flags; struct sk_buff* skb; union igc_adv_tx_desc* next_to_watch; int /*<<< orphan*/  time_stamp; int /*<<< orphan*/  bytecount; } ;
struct igc_ring {size_t next_to_use; size_t count; int /*<<< orphan*/  dev; struct igc_tx_buffer* tx_buffer_info; int /*<<< orphan*/  tail; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  unsigned int dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_NEEDED ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int IGC_MAX_DATA_PER_TXD ; 
 unsigned int IGC_TXD_DCMD ; 
 union igc_adv_tx_desc* FUNC0 (struct igc_ring*,size_t) ; 
 void* FUNC1 (unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct igc_tx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct igc_tx_buffer*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct igc_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct igc_tx_buffer*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct igc_ring*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct igc_ring*,union igc_adv_tx_desc*,unsigned int,scalar_t__ const) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC22 (struct sk_buff*) ; 
 TYPE_2__* FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct igc_ring*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct igc_ring *tx_ring,
		      struct igc_tx_buffer *first,
		      const u8 hdr_len)
{
	struct sk_buff *skb = first->skb;
	struct igc_tx_buffer *tx_buffer;
	union igc_adv_tx_desc *tx_desc;
	u32 tx_flags = first->tx_flags;
	skb_frag_t *frag;
	u16 i = tx_ring->next_to_use;
	unsigned int data_len, size;
	dma_addr_t dma;
	u32 cmd_type = FUNC14(skb, tx_flags);

	tx_desc = FUNC0(tx_ring, i);

	FUNC15(tx_ring, tx_desc, tx_flags, skb->len - hdr_len);

	size = FUNC22(skb);
	data_len = skb->data_len;

	dma = FUNC5(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);

	tx_buffer = first;

	for (frag = &FUNC23(skb)->frags[0];; frag++) {
		if (FUNC6(tx_ring->dev, dma))
			goto dma_error;

		/* record length, and DMA address */
		FUNC10(tx_buffer, len, size);
		FUNC8(tx_buffer, dma, dma);

		tx_desc->read.buffer_addr = FUNC2(dma);

		while (FUNC26(size > IGC_MAX_DATA_PER_TXD)) {
			tx_desc->read.cmd_type_len =
				FUNC1(cmd_type ^ IGC_MAX_DATA_PER_TXD);

			i++;
			tx_desc++;
			if (i == tx_ring->count) {
				tx_desc = FUNC0(tx_ring, 0);
				i = 0;
			}
			tx_desc->read.olinfo_status = 0;

			dma += IGC_MAX_DATA_PER_TXD;
			size -= IGC_MAX_DATA_PER_TXD;

			tx_desc->read.buffer_addr = FUNC2(dma);
		}

		if (FUNC16(!data_len))
			break;

		tx_desc->read.cmd_type_len = FUNC1(cmd_type ^ size);

		i++;
		tx_desc++;
		if (i == tx_ring->count) {
			tx_desc = FUNC0(tx_ring, 0);
			i = 0;
		}
		tx_desc->read.olinfo_status = 0;

		size = FUNC21(frag);
		data_len -= size;

		dma = FUNC20(tx_ring->dev, frag, 0,
				       size, DMA_TO_DEVICE);

		tx_buffer = &tx_ring->tx_buffer_info[i];
	}

	/* write last descriptor with RS and EOP bits */
	cmd_type |= size | IGC_TXD_DCMD;
	tx_desc->read.cmd_type_len = FUNC1(cmd_type);

	FUNC17(FUNC25(tx_ring), first->bytecount);

	/* set the timestamp */
	first->time_stamp = jiffies;

	FUNC24(skb);

	/* Force memory writes to complete before letting h/w know there
	 * are new descriptors to fetch.  (Only applicable for weak-ordered
	 * memory model archs, such as IA-64).
	 *
	 * We also need this memory barrier to make certain all of the
	 * status bits have been updated before next_to_watch is written.
	 */
	FUNC27();

	/* set next_to_watch value indicating a packet is present */
	first->next_to_watch = tx_desc;

	i++;
	if (i == tx_ring->count)
		i = 0;

	tx_ring->next_to_use = i;

	/* Make sure there is space in the ring for the next send. */
	FUNC13(tx_ring, DESC_NEEDED);

	if (FUNC19(FUNC25(tx_ring)) || !FUNC18()) {
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