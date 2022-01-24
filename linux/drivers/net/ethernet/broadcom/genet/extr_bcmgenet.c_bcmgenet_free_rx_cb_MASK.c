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
struct enet_cb {struct sk_buff* skb; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 scalar_t__ FUNC0 (struct enet_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enet_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enet_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct device *dev,
					   struct enet_cb *cb)
{
	struct sk_buff *skb;

	skb = cb->skb;
	cb->skb = NULL;

	if (FUNC0(cb, dma_addr)) {
		FUNC3(dev, FUNC0(cb, dma_addr),
				 FUNC2(cb, dma_len), DMA_FROM_DEVICE);
		FUNC1(cb, dma_addr, 0);
	}

	return skb;
}