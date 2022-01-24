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
struct sk_buff {int data; } ;
struct rx_desc {int buf_size; int cmd_sts; int /*<<< orphan*/  buf_ptr; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct pxa168_eth_private {scalar_t__ rx_desc_count; scalar_t__ rx_ring_size; int rx_used_desc_q; TYPE_2__ timeout; scalar_t__ rx_resource_err; struct sk_buff** rx_skb; TYPE_1__* pdev; struct rx_desc* p_rx_desc_area; int /*<<< orphan*/  skb_size; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUF_OWNED_BY_DMA ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ ETH_HW_IP_ALIGN ; 
 int HZ ; 
 int RX_EN_INT ; 
 scalar_t__ SKB_DMA_REALIGN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ jiffies ; 
 struct sk_buff* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct pxa168_eth_private* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC4(dev);
	struct sk_buff *skb;
	struct rx_desc *p_used_rx_desc;
	int used_rx_desc;

	while (pep->rx_desc_count < pep->rx_ring_size) {
		int size;

		skb = FUNC3(dev, pep->skb_size);
		if (!skb)
			break;
		if (SKB_DMA_REALIGN)
			FUNC6(skb, SKB_DMA_REALIGN);
		pep->rx_desc_count++;
		/* Get 'used' Rx descriptor */
		used_rx_desc = pep->rx_used_desc_q;
		p_used_rx_desc = &pep->p_rx_desc_area[used_rx_desc];
		size = FUNC5(skb) - skb->data;
		p_used_rx_desc->buf_ptr = FUNC1(&pep->pdev->dev,
							 skb->data,
							 size,
							 DMA_FROM_DEVICE);
		p_used_rx_desc->buf_size = size;
		pep->rx_skb[used_rx_desc] = skb;

		/* Return the descriptor to DMA ownership */
		FUNC2();
		p_used_rx_desc->cmd_sts = BUF_OWNED_BY_DMA | RX_EN_INT;
		FUNC2();

		/* Move the used descriptor pointer to the next descriptor */
		pep->rx_used_desc_q = (used_rx_desc + 1) % pep->rx_ring_size;

		/* Any Rx return cancels the Rx resource error status */
		pep->rx_resource_err = 0;

		FUNC6(skb, ETH_HW_IP_ALIGN);
	}

	/*
	 * If RX ring is empty of SKB, set a timer to try allocating
	 * again at a later time.
	 */
	if (pep->rx_desc_count == 0) {
		pep->timeout.expires = jiffies + (HZ / 10);
		FUNC0(&pep->timeout);
	}
}