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
struct skb_shared_info {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct sk_buff {scalar_t__ head; } ;
struct deferred_unmap_info {int /*<<< orphan*/  pdev; int /*<<< orphan*/ * addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct skb_shared_info* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	int i;
	const dma_addr_t *p;
	const struct skb_shared_info *si;
	const struct deferred_unmap_info *dui;

	dui = (struct deferred_unmap_info *)skb->head;
	p = dui->addr;

	if (FUNC4(skb) - FUNC5(skb))
		FUNC1(dui->pdev, *p++, FUNC4(skb) -
				 FUNC5(skb), PCI_DMA_TODEVICE);

	si = FUNC3(skb);
	for (i = 0; i < si->nr_frags; i++)
		FUNC0(dui->pdev, *p++, FUNC2(&si->frags[i]),
			       PCI_DMA_TODEVICE);
}