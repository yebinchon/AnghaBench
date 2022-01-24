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
struct sk_buff {int dummy; } ;
struct pcnet32_tx_head {int dummy; } ;
struct pcnet32_private {int tx_ring_size; int tx_mod_mask; unsigned int tx_len_bits; int /*<<< orphan*/  pci_dev; struct sk_buff** tx_skbuff; struct sk_buff** tx_dma_addr; struct sk_buff* tx_ring_dma_addr; struct pcnet32_tx_head* tx_ring; } ;
struct net_device {int dummy; } ;
typedef  struct sk_buff* dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct pcnet32_tx_head*,struct sk_buff*) ; 
 struct pcnet32_tx_head* FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				    struct pcnet32_private *lp,
				    unsigned int size)
{
	dma_addr_t new_ring_dma_addr;
	dma_addr_t *new_dma_addr_list;
	struct pcnet32_tx_head *new_tx_ring;
	struct sk_buff **new_skb_list;
	unsigned int entries = FUNC0(size);

	FUNC5(dev);

	new_tx_ring =
		FUNC4(lp->pci_dev,
				      sizeof(struct pcnet32_tx_head) * entries,
				      &new_ring_dma_addr);
	if (new_tx_ring == NULL)
		return;

	new_dma_addr_list = FUNC1(entries, sizeof(dma_addr_t), GFP_ATOMIC);
	if (!new_dma_addr_list)
		goto free_new_tx_ring;

	new_skb_list = FUNC1(entries, sizeof(struct sk_buff *), GFP_ATOMIC);
	if (!new_skb_list)
		goto free_new_lists;

	FUNC2(lp->tx_skbuff);
	FUNC2(lp->tx_dma_addr);
	FUNC3(lp->pci_dev,
			    sizeof(struct pcnet32_tx_head) * lp->tx_ring_size,
			    lp->tx_ring, lp->tx_ring_dma_addr);

	lp->tx_ring_size = entries;
	lp->tx_mod_mask = lp->tx_ring_size - 1;
	lp->tx_len_bits = (size << 12);
	lp->tx_ring = new_tx_ring;
	lp->tx_ring_dma_addr = new_ring_dma_addr;
	lp->tx_dma_addr = new_dma_addr_list;
	lp->tx_skbuff = new_skb_list;
	return;

free_new_lists:
	FUNC2(new_dma_addr_list);
free_new_tx_ring:
	FUNC3(lp->pci_dev,
			    sizeof(struct pcnet32_tx_head) * entries,
			    new_tx_ring,
			    new_ring_dma_addr);
}