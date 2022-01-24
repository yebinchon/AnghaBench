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
struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {int /*<<< orphan*/  mapping; int /*<<< orphan*/  len; struct sk_buff* skb; } ;
struct jme_adapter {int /*<<< orphan*/  pdev; TYPE_1__* dev; struct jme_ring* rxring; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ RX_EXTRA_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct jme_adapter *jme, int i)
{
	struct jme_ring *rxring = &(jme->rxring[0]);
	struct jme_buffer_info *rxbi = rxring->bufinf + i;
	struct sk_buff *skb;
	dma_addr_t mapping;

	skb = FUNC2(jme->dev,
		jme->dev->mtu + RX_EXTRA_LEN);
	if (FUNC8(!skb))
		return -ENOMEM;

	mapping = FUNC5(jme->pdev, FUNC9(skb->data),
			       FUNC3(skb->data), FUNC7(skb),
			       PCI_DMA_FROMDEVICE);
	if (FUNC8(FUNC4(jme->pdev, mapping))) {
		FUNC0(skb);
		return -ENOMEM;
	}

	if (FUNC1(rxbi->mapping))
		FUNC6(jme->pdev, rxbi->mapping,
			       rxbi->len, PCI_DMA_FROMDEVICE);

	rxbi->skb = skb;
	rxbi->len = FUNC7(skb);
	rxbi->mapping = mapping;
	return 0;
}