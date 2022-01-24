#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xgmac_priv {int rx_head; int /*<<< orphan*/  rx_tail; TYPE_1__* dev; scalar_t__ dma_buf_sz; struct sk_buff** rx_skbuff; int /*<<< orphan*/  device; struct xgmac_dma_desc* dma_rx; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_RX_RING_SZ ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct xgmac_dma_desc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct xgmac_priv *priv)
{
	struct xgmac_dma_desc *p;
	dma_addr_t paddr;
	int bufsz = priv->dev->mtu + ETH_HLEN + ETH_FCS_LEN;

	while (FUNC6(priv->rx_head, priv->rx_tail, DMA_RX_RING_SZ) > 1) {
		int entry = priv->rx_head;
		struct sk_buff *skb;

		p = priv->dma_rx + entry;

		if (priv->rx_skbuff[entry] == NULL) {
			skb = FUNC7(priv->dev, bufsz);
			if (FUNC9(skb == NULL))
				break;

			paddr = FUNC3(priv->device, skb->data,
					       priv->dma_buf_sz - NET_IP_ALIGN,
					       DMA_FROM_DEVICE);
			if (FUNC4(priv->device, paddr)) {
				FUNC2(skb);
				break;
			}
			priv->rx_skbuff[entry] = skb;
			FUNC0(p, paddr, priv->dma_buf_sz);
		}

		FUNC8(priv->dev, "rx ring: head %d, tail %d\n",
			priv->rx_head, priv->rx_tail);

		priv->rx_head = FUNC5(priv->rx_head, DMA_RX_RING_SZ);
		FUNC1(p);
	}
}