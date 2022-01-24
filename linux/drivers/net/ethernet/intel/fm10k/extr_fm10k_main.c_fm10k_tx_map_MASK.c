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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct sk_buff {unsigned char* data; unsigned int data_len; } ;
struct fm10k_tx_desc {scalar_t__ vlan; } ;
struct fm10k_tx_buffer {struct fm10k_tx_desc* next_to_watch; struct sk_buff* skb; int /*<<< orphan*/  bytecount; int /*<<< orphan*/  tx_flags; } ;
struct fm10k_ring {size_t next_to_use; size_t count; struct fm10k_tx_buffer* tx_buffer; int /*<<< orphan*/  dev; int /*<<< orphan*/  tail; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  unsigned int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_NEEDED ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int FM10K_MAX_DATA_PER_TXD ; 
 int /*<<< orphan*/  FM10K_TXD_FLAG_LAST ; 
 struct fm10k_tx_desc* FUNC0 (struct fm10k_ring*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned char*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_tx_buffer*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_tx_buffer*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct fm10k_ring*,struct fm10k_tx_desc*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fm10k_ring*,struct fm10k_tx_buffer*) ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 TYPE_1__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct fm10k_ring*) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC26(struct fm10k_ring *tx_ring,
			 struct fm10k_tx_buffer *first)
{
	struct sk_buff *skb = first->skb;
	struct fm10k_tx_buffer *tx_buffer;
	struct fm10k_tx_desc *tx_desc;
	skb_frag_t *frag;
	unsigned char *data;
	dma_addr_t dma;
	unsigned int data_len, size;
	u32 tx_flags = first->tx_flags;
	u16 i = tx_ring->next_to_use;
	u8 flags = FUNC8(skb, tx_flags);

	tx_desc = FUNC0(tx_ring, i);

	/* add HW VLAN tag */
	if (FUNC21(skb))
		tx_desc->vlan = FUNC1(FUNC20(skb));
	else
		tx_desc->vlan = 0;

	size = FUNC17(skb);
	data = skb->data;

	dma = FUNC3(tx_ring->dev, data, size, DMA_TO_DEVICE);

	data_len = skb->data_len;
	tx_buffer = first;

	for (frag = &FUNC18(skb)->frags[0];; frag++) {
		if (FUNC4(tx_ring->dev, dma))
			goto dma_error;

		/* record length, and DMA address */
		FUNC6(tx_buffer, len, size);
		FUNC5(tx_buffer, dma, dma);

		while (FUNC23(size > FM10K_MAX_DATA_PER_TXD)) {
			if (FUNC9(tx_ring, tx_desc++, i++, dma,
					       FM10K_MAX_DATA_PER_TXD, flags)) {
				tx_desc = FUNC0(tx_ring, 0);
				i = 0;
			}

			dma += FM10K_MAX_DATA_PER_TXD;
			size -= FM10K_MAX_DATA_PER_TXD;
		}

		if (FUNC11(!data_len))
			break;

		if (FUNC9(tx_ring, tx_desc++, i++,
				       dma, size, flags)) {
			tx_desc = FUNC0(tx_ring, 0);
			i = 0;
		}

		size = FUNC16(frag);
		data_len -= size;

		dma = FUNC15(tx_ring->dev, frag, 0, size,
				       DMA_TO_DEVICE);

		tx_buffer = &tx_ring->tx_buffer[i];
	}

	/* write last descriptor with LAST bit set */
	flags |= FM10K_TXD_FLAG_LAST;

	if (FUNC9(tx_ring, tx_desc, i++, dma, size, flags))
		i = 0;

	/* record bytecount for BQL */
	FUNC12(FUNC22(tx_ring), first->bytecount);

	/* record SW timestamp if HW timestamp is not available */
	FUNC19(first->skb);

	/* Force memory writes to complete before letting h/w know there
	 * are new descriptors to fetch.  (Only applicable for weak-ordered
	 * memory model archs, such as IA-64).
	 *
	 * We also need this memory barrier to make certain all of the
	 * status bits have been updated before next_to_watch is written.
	 */
	FUNC24();

	/* set next_to_watch value indicating a packet is present */
	first->next_to_watch = tx_desc;

	tx_ring->next_to_use = i;

	/* Make sure there is space in the ring for the next send. */
	FUNC7(tx_ring, DESC_NEEDED);

	/* notify HW of packet */
	if (FUNC14(FUNC22(tx_ring)) || !FUNC13()) {
		FUNC25(i, tx_ring->tail);
	}

	return;
dma_error:
	FUNC2(tx_ring->dev, "TX DMA map failed\n");

	/* clear dma mappings for failed tx_buffer map */
	for (;;) {
		tx_buffer = &tx_ring->tx_buffer[i];
		FUNC10(tx_ring, tx_buffer);
		if (tx_buffer == first)
			break;
		if (i == 0)
			i = tx_ring->count;
		i--;
	}

	tx_ring->next_to_use = i;
}