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
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct e1000_ring {unsigned int next_to_use; unsigned int count; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {unsigned int length; unsigned int next_to_watch; int mapped_as_page; unsigned int segs; unsigned int bytecount; scalar_t__ dma; struct sk_buff* skb; void* time_stamp; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {scalar_t__ gso_segs; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_ring*,struct e1000_buffer*,int) ; 
 void* jiffies ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct e1000_ring *tx_ring, struct sk_buff *skb,
			unsigned int first, unsigned int max_per_txd,
			unsigned int nr_frags)
{
	struct e1000_adapter *adapter = tx_ring->adapter;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_buffer *buffer_info;
	unsigned int len = FUNC7(skb);
	unsigned int offset = 0, size, count = 0, i;
	unsigned int f, bytecount, segs;

	i = tx_ring->next_to_use;

	while (len) {
		buffer_info = &tx_ring->buffer_info[i];
		size = FUNC4(len, max_per_txd);

		buffer_info->length = size;
		buffer_info->time_stamp = jiffies;
		buffer_info->next_to_watch = i;
		buffer_info->dma = FUNC1(&pdev->dev,
						  skb->data + offset,
						  size, DMA_TO_DEVICE);
		buffer_info->mapped_as_page = false;
		if (FUNC2(&pdev->dev, buffer_info->dma))
			goto dma_error;

		len -= size;
		offset += size;
		count++;

		if (len) {
			i++;
			if (i == tx_ring->count)
				i = 0;
		}
	}

	for (f = 0; f < nr_frags; f++) {
		const skb_frag_t *frag = &FUNC8(skb)->frags[f];

		len = FUNC6(frag);
		offset = 0;

		while (len) {
			i++;
			if (i == tx_ring->count)
				i = 0;

			buffer_info = &tx_ring->buffer_info[i];
			size = FUNC4(len, max_per_txd);

			buffer_info->length = size;
			buffer_info->time_stamp = jiffies;
			buffer_info->next_to_watch = i;
			buffer_info->dma = FUNC5(&pdev->dev, frag,
							    offset, size,
							    DMA_TO_DEVICE);
			buffer_info->mapped_as_page = true;
			if (FUNC2(&pdev->dev, buffer_info->dma))
				goto dma_error;

			len -= size;
			offset += size;
			count++;
		}
	}

	segs = FUNC8(skb)->gso_segs ? : 1;
	/* multiply data chunks by size of headers */
	bytecount = ((segs - 1) * FUNC7(skb)) + skb->len;

	tx_ring->buffer_info[i].skb = skb;
	tx_ring->buffer_info[i].segs = segs;
	tx_ring->buffer_info[i].bytecount = bytecount;
	tx_ring->buffer_info[first].next_to_watch = i;

	return count;

dma_error:
	FUNC0(&pdev->dev, "Tx DMA map failed\n");
	buffer_info->dma = 0;
	if (count)
		count--;

	while (count--) {
		if (i == 0)
			i += tx_ring->count;
		i--;
		buffer_info = &tx_ring->buffer_info[i];
		FUNC3(tx_ring, buffer_info, true);
	}

	return 0;
}