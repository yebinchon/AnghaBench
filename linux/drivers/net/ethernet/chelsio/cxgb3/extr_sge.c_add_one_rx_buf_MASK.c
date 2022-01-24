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
typedef  int u64 ;
struct rx_sw_desc {int dummy; } ;
struct rx_desc {void* gen2; void* len_gen; void* addr_hi; void* addr_lo; } ;
struct pci_dev {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC3 (struct rx_sw_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int FUNC6 (struct pci_dev*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(void *va, unsigned int len,
				 struct rx_desc *d, struct rx_sw_desc *sd,
				 unsigned int gen, struct pci_dev *pdev)
{
	dma_addr_t mapping;

	mapping = FUNC6(pdev, va, len, PCI_DMA_FROMDEVICE);
	if (FUNC7(FUNC5(pdev, mapping)))
		return -ENOMEM;

	FUNC3(sd, dma_addr, mapping);

	d->addr_lo = FUNC2(mapping);
	d->addr_hi = FUNC2((u64) mapping >> 32);
	FUNC4();
	d->len_gen = FUNC2(FUNC0(gen));
	d->gen2 = FUNC2(FUNC1(gen));
	return 0;
}