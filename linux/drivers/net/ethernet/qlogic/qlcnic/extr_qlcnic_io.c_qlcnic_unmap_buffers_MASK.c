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
struct sk_buff {int dummy; } ;
struct qlcnic_skb_frag {int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;
struct qlcnic_cmd_buffer {int /*<<< orphan*/ * skb; struct qlcnic_skb_frag* frag_array; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, struct sk_buff *skb,
				 struct qlcnic_cmd_buffer *pbuf)
{
	struct qlcnic_skb_frag *nf = &pbuf->frag_array[0];
	int i, nr_frags = FUNC3(skb)->nr_frags;

	for (i = 0; i < nr_frags; i++) {
		nf = &pbuf->frag_array[i+1];
		FUNC0(pdev, nf->dma, nf->length, PCI_DMA_TODEVICE);
	}

	nf = &pbuf->frag_array[0];
	FUNC1(pdev, nf->dma, FUNC2(skb), PCI_DMA_TODEVICE);
	pbuf->skb = NULL;
}