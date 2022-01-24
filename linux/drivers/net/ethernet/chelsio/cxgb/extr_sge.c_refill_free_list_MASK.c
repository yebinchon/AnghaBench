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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct sge {unsigned int rx_pkt_pad; TYPE_1__* adapter; } ;
struct pci_dev {int dummy; } ;
struct freelQ_e {int addr_hi; int len_gen; int /*<<< orphan*/  gen2; scalar_t__ addr_lo; } ;
struct freelQ_ce {struct sk_buff* skb; } ;
struct freelQ {size_t pidx; unsigned int rx_buffer_size; unsigned int dma_offset; size_t credits; size_t size; int genbit; struct freelQ_e* entries; struct freelQ_ce* centries; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 struct sk_buff* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC4 (struct freelQ_ce*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct freelQ_ce*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct sge *sge, struct freelQ *q)
{
	struct pci_dev *pdev = sge->adapter->pdev;
	struct freelQ_ce *ce = &q->centries[q->pidx];
	struct freelQ_e *e = &q->entries[q->pidx];
	unsigned int dma_len = q->rx_buffer_size - q->dma_offset;

	while (q->credits < q->size) {
		struct sk_buff *skb;
		dma_addr_t mapping;

		skb = FUNC3(q->rx_buffer_size);
		if (!skb)
			break;

		FUNC7(skb, q->dma_offset);
		mapping = FUNC6(pdev, skb->data, dma_len,
					 PCI_DMA_FROMDEVICE);
		FUNC7(skb, sge->rx_pkt_pad);

		ce->skb = skb;
		FUNC4(ce, dma_addr, mapping);
		FUNC5(ce, dma_len, dma_len);
		e->addr_lo = (u32)mapping;
		e->addr_hi = (u64)mapping >> 32;
		e->len_gen = FUNC2(dma_len) | FUNC0(q->genbit);
		FUNC8();
		e->gen2 = FUNC1(q->genbit);

		e++;
		ce++;
		if (++q->pidx == q->size) {
			q->pidx = 0;
			q->genbit ^= 1;
			ce = q->centries;
			e = q->entries;
		}
		q->credits++;
	}
}