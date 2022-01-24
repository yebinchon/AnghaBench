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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pci_dev {int dummy; } ;
struct freelQ_ce {struct sk_buff* skb; } ;
struct freelQ {size_t cidx; int credits; struct freelQ_ce* centries; } ;
struct adapter {int /*<<< orphan*/  napi; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 unsigned int copybreak ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 int /*<<< orphan*/  FUNC0 (struct freelQ_ce const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct freelQ_ce const*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct freelQ*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static inline struct sk_buff *FUNC10(struct adapter *adapter,
					 struct freelQ *fl, unsigned int len)
{
	const struct freelQ_ce *ce = &fl->centries[fl->cidx];
	struct pci_dev *pdev = adapter->pdev;
	struct sk_buff *skb;

	if (len < copybreak) {
		skb = FUNC2(&adapter->napi, len);
		if (!skb)
			goto use_orig_buf;

		FUNC9(skb, len);
		FUNC3(pdev,
					    FUNC0(ce, dma_addr),
					    FUNC1(ce, dma_len),
					    PCI_DMA_FROMDEVICE);
		FUNC8(ce->skb, skb->data, len);
		FUNC4(pdev,
					       FUNC0(ce, dma_addr),
					       FUNC1(ce, dma_len),
					       PCI_DMA_FROMDEVICE);
		FUNC7(fl, fl->cidx);
		return skb;
	}

use_orig_buf:
	if (fl->credits < 2) {
		FUNC7(fl, fl->cidx);
		return NULL;
	}

	FUNC5(pdev, FUNC0(ce, dma_addr),
			 FUNC1(ce, dma_len), PCI_DMA_FROMDEVICE);
	skb = ce->skb;
	FUNC6(skb->data);

	FUNC9(skb, len);
	return skb;
}