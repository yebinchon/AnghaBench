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
struct sk_buff {TYPE_1__* dev; int /*<<< orphan*/  data; } ;
struct rx_ring_info {int /*<<< orphan*/  data_addr; int /*<<< orphan*/ * frag_addr; struct sk_buff* skb; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  const skb_frag_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/  const* frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  data_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rx_ring_info*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev, struct rx_ring_info *re,
			    unsigned size)
{
	struct sk_buff *skb = re->skb;
	int i;

	re->data_addr = FUNC6(pdev, skb->data, size, PCI_DMA_FROMDEVICE);
	if (FUNC5(pdev, re->data_addr))
		goto mapping_error;

	FUNC3(re, data_size, size);

	for (i = 0; i < FUNC11(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC11(skb)->frags[i];

		re->frag_addr[i] = FUNC9(&pdev->dev, frag, 0,
						    FUNC10(frag),
						    DMA_FROM_DEVICE);

		if (FUNC1(&pdev->dev, re->frag_addr[i]))
			goto map_page_error;
	}
	return 0;

map_page_error:
	while (--i >= 0) {
		FUNC7(pdev, re->frag_addr[i],
			       FUNC10(&FUNC11(skb)->frags[i]),
			       PCI_DMA_FROMDEVICE);
	}

	FUNC8(pdev, re->data_addr, FUNC2(re, data_size),
			 PCI_DMA_FROMDEVICE);

mapping_error:
	if (FUNC4())
		FUNC0(&pdev->dev, "%s: rx mapping error\n",
			 skb->dev->name);
	return -EIO;
}