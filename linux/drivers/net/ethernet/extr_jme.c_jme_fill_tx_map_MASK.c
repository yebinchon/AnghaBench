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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* bufaddrl; void* bufaddrh; int /*<<< orphan*/  datalen; int /*<<< orphan*/  flags; } ;
struct txdesc {TYPE_1__ desc2; scalar_t__* dw; } ;
struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
struct jme_buffer_info {int /*<<< orphan*/  len; scalar_t__ mapping; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  TXFLAG_64BIT ; 
 int /*<<< orphan*/  TXFLAG_OWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct pci_dev *pdev,
		struct txdesc *txdesc,
		struct jme_buffer_info *txbi,
		struct page *page,
		u32 page_offset,
		u32 len,
		bool hidma)
{
	dma_addr_t dmaaddr;

	dmaaddr = FUNC4(pdev,
				page,
				page_offset,
				len,
				PCI_DMA_TODEVICE);

	if (FUNC5(FUNC2(pdev, dmaaddr)))
		return -EINVAL;

	FUNC3(pdev,
				       dmaaddr,
				       len,
				       PCI_DMA_TODEVICE);

	txdesc->dw[0] = 0;
	txdesc->dw[1] = 0;
	txdesc->desc2.flags	= TXFLAG_OWN;
	txdesc->desc2.flags	|= (hidma) ? TXFLAG_64BIT : 0;
	txdesc->desc2.datalen	= FUNC0(len);
	txdesc->desc2.bufaddrh	= FUNC1((__u64)dmaaddr >> 32);
	txdesc->desc2.bufaddrl	= FUNC1(
					(__u64)dmaaddr & 0xFFFFFFFFUL);

	txbi->mapping = dmaaddr;
	txbi->len = len;
	return 0;
}