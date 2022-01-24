#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct freelQ_ce {int /*<<< orphan*/ * skb; } ;
struct freelQ {unsigned int cidx; unsigned int size; struct freelQ_ce* centries; int /*<<< orphan*/  credits; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 int /*<<< orphan*/  FUNC1 (struct freelQ_ce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct freelQ_ce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, struct freelQ *q)
{
	unsigned int cidx = q->cidx;

	while (q->credits--) {
		struct freelQ_ce *ce = &q->centries[cidx];

		FUNC3(pdev, FUNC1(ce, dma_addr),
				 FUNC2(ce, dma_len),
				 PCI_DMA_FROMDEVICE);
		FUNC0(ce->skb);
		ce->skb = NULL;
		if (++cidx == q->size)
			cidx = 0;
	}
}