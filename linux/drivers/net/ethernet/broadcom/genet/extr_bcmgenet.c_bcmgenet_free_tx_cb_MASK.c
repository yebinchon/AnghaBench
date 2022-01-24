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
struct enet_cb {struct sk_buff* skb; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct enet_cb* last_cb; struct enet_cb* first_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 scalar_t__ FUNC1 (struct enet_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enet_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enet_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct device *dev,
					   struct enet_cb *cb)
{
	struct sk_buff *skb;

	skb = cb->skb;

	if (skb) {
		cb->skb = NULL;
		if (cb == FUNC0(skb)->first_cb)
			FUNC5(dev, FUNC1(cb, dma_addr),
					 FUNC3(cb, dma_len),
					 DMA_TO_DEVICE);
		else
			FUNC4(dev, FUNC1(cb, dma_addr),
				       FUNC3(cb, dma_len),
				       DMA_TO_DEVICE);
		FUNC2(cb, dma_addr, 0);

		if (cb == FUNC0(skb)->last_cb)
			return skb;

	} else if (FUNC1(cb, dma_addr)) {
		FUNC4(dev,
			       FUNC1(cb, dma_addr),
			       FUNC3(cb, dma_len),
			       DMA_TO_DEVICE);
		FUNC2(cb, dma_addr, 0);
	}

	return NULL;
}