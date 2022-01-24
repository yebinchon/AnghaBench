#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sky2_port {TYPE_1__* hw; int /*<<< orphan*/  netdev; } ;
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct rx_ring_info {TYPE_2__* skb; int /*<<< orphan*/  data_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; } ;
struct TYPE_7__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct sky2_port *sky2,
				    const struct rx_ring_info *re,
				    unsigned length)
{
	struct sk_buff *skb;

	skb = FUNC3(sky2->netdev, length);
	if (FUNC2(skb)) {
		FUNC4(sky2->hw->pdev, re->data_addr,
					    length, PCI_DMA_FROMDEVICE);
		FUNC7(re->skb, skb->data, length);
		skb->ip_summed = re->skb->ip_summed;
		skb->csum = re->skb->csum;
		FUNC8(skb, re->skb);
		FUNC1(skb, re->skb);

		FUNC5(sky2->hw->pdev, re->data_addr,
					       length, PCI_DMA_FROMDEVICE);
		FUNC0(re->skb);
		FUNC6(re->skb);
		re->skb->ip_summed = CHECKSUM_NONE;
		FUNC9(skb, length);
	}
	return skb;
}