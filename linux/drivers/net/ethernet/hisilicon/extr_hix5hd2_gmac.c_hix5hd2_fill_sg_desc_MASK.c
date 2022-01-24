#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct sg_desc {TYPE_2__* frags; void* linear_len; void* linear_addr; void* total_len; } ;
struct TYPE_4__ {struct sg_desc* desc; } ;
struct hix5hd2_priv {int /*<<< orphan*/  dev; TYPE_1__ tx_ring; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {void* size; void* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hix5hd2_priv *priv,
				struct sk_buff *skb, u32 pos)
{
	struct sg_desc *desc;
	dma_addr_t addr;
	int ret;
	int i;

	desc = priv->tx_ring.desc + pos;

	desc->total_len = FUNC0(skb->len);
	addr = FUNC1(priv->dev, skb->data, FUNC5(skb),
			      DMA_TO_DEVICE);
	if (FUNC7(FUNC2(priv->dev, addr)))
		return -EINVAL;
	desc->linear_addr = FUNC0(addr);
	desc->linear_len = FUNC0(FUNC5(skb));

	for (i = 0; i < FUNC6(skb)->nr_frags; i++) {
		skb_frag_t *frag = &FUNC6(skb)->frags[i];
		int len = FUNC4(frag);

		addr = FUNC3(priv->dev, frag, 0, len, DMA_TO_DEVICE);
		ret = FUNC2(priv->dev, addr);
		if (FUNC7(ret))
			return -EINVAL;
		desc->frags[i].addr = FUNC0(addr);
		desc->frags[i].size = FUNC0(len);
	}

	return 0;
}