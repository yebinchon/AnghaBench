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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct netxen_skb_frag {unsigned long long dma; int /*<<< orphan*/  length; } ;
struct netxen_cmd_buffer {struct netxen_skb_frag* frag_array; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC1 (struct pci_dev*,void*) ; 
 void* FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC9(struct pci_dev *pdev,
		struct sk_buff *skb, struct netxen_cmd_buffer *pbuf)
{
	struct netxen_skb_frag *nf;
	skb_frag_t *frag;
	int i, nr_frags;
	dma_addr_t map;

	nr_frags = FUNC8(skb)->nr_frags;
	nf = &pbuf->frag_array[0];

	map = FUNC2(pdev, skb->data,
			FUNC7(skb), PCI_DMA_TODEVICE);
	if (FUNC1(pdev, map))
		goto out_err;

	nf->dma = map;
	nf->length = FUNC7(skb);

	for (i = 0; i < nr_frags; i++) {
		frag = &FUNC8(skb)->frags[i];
		nf = &pbuf->frag_array[i+1];

		map = FUNC5(&pdev->dev, frag, 0, FUNC6(frag),
				       DMA_TO_DEVICE);
		if (FUNC0(&pdev->dev, map))
			goto unwind;

		nf->dma = map;
		nf->length = FUNC6(frag);
	}

	return 0;

unwind:
	while (--i >= 0) {
		nf = &pbuf->frag_array[i+1];
		FUNC3(pdev, nf->dma, nf->length, PCI_DMA_TODEVICE);
		nf->dma = 0ULL;
	}

	nf = &pbuf->frag_array[0];
	FUNC4(pdev, nf->dma, FUNC7(skb), PCI_DMA_TODEVICE);
	nf->dma = 0ULL;

out_err:
	return -ENOMEM;
}