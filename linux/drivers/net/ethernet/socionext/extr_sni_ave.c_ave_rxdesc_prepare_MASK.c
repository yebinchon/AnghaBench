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
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  tail; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {TYPE_2__* desc; } ;
struct ave_private {TYPE_1__ rx; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {struct sk_buff* skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESCID_RX ; 
 scalar_t__ AVE_FRAME_HEADROOM ; 
 int AVE_MAX_ETHFRAME ; 
 int AVE_STS_INTR ; 
 int AVE_STS_OWN ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct net_device*,TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct ave_private* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev, int entry)
{
	struct ave_private *priv = FUNC6(ndev);
	struct sk_buff *skb;
	dma_addr_t paddr;
	int ret;

	skb = priv->rx.desc[entry].skbs;
	if (!skb) {
		skb = FUNC4(ndev, AVE_MAX_ETHFRAME);
		if (!skb) {
			FUNC5(ndev, "can't allocate skb for Rx\n");
			return -ENOMEM;
		}
		skb->data += AVE_FRAME_HEADROOM;
		skb->tail += AVE_FRAME_HEADROOM;
	}

	/* set disable to cmdsts */
	FUNC1(ndev, AVE_DESCID_RX, entry,
			      AVE_STS_INTR | AVE_STS_OWN);

	/* map Rx buffer
	 * Rx buffer set to the Rx descriptor has two restrictions:
	 * - Rx buffer address is 4 byte aligned.
	 * - Rx buffer begins with 2 byte headroom, and data will be put from
	 *   (buffer + 2).
	 * To satisfy this, specify the address to put back the buffer
	 * pointer advanced by AVE_FRAME_HEADROOM, and expand the map size
	 * by AVE_FRAME_HEADROOM.
	 */
	ret = FUNC2(ndev, &priv->rx.desc[entry],
			  skb->data - AVE_FRAME_HEADROOM,
			  AVE_MAX_ETHFRAME + AVE_FRAME_HEADROOM,
			  DMA_FROM_DEVICE, &paddr);
	if (ret) {
		FUNC5(ndev, "can't map skb for Rx\n");
		FUNC3(skb);
		return ret;
	}
	priv->rx.desc[entry].skbs = skb;

	/* set buffer pointer */
	FUNC0(ndev, AVE_DESCID_RX, entry, paddr);

	/* set enable to cmdsts */
	FUNC1(ndev, AVE_DESCID_RX, entry,
			      AVE_STS_INTR | AVE_MAX_ETHFRAME);

	return ret;
}