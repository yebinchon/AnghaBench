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
struct sge_fl {int /*<<< orphan*/  buf_size; int /*<<< orphan*/  alloc_size; scalar_t__ use_pages; } ;
struct TYPE_2__ {int /*<<< orphan*/ * page; int /*<<< orphan*/  mapping; int /*<<< orphan*/ * p_cnt; } ;
struct rx_sw_desc {int /*<<< orphan*/ * skb; TYPE_1__ pg_chunk; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC0 (struct rx_sw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev, const struct sge_fl *q,
			  struct rx_sw_desc *d)
{
	if (q->use_pages && d->pg_chunk.page) {
		(*d->pg_chunk.p_cnt)--;
		if (!*d->pg_chunk.p_cnt)
			FUNC2(pdev,
				       d->pg_chunk.mapping,
				       q->alloc_size, PCI_DMA_FROMDEVICE);

		FUNC4(d->pg_chunk.page);
		d->pg_chunk.page = NULL;
	} else {
		FUNC3(pdev, FUNC0(d, dma_addr),
				 q->buf_size, PCI_DMA_FROMDEVICE);
		FUNC1(d->skb);
		d->skb = NULL;
	}
}