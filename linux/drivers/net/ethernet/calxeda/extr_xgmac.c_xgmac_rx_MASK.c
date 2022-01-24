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
struct xgmac_priv {unsigned int rx_tail; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; scalar_t__ dma_buf_sz; int /*<<< orphan*/  device; struct sk_buff** rx_skbuff; struct xgmac_dma_desc* dma_rx; int /*<<< orphan*/  rx_head; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int ip_summed; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int CHECKSUM_NONE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_RX_RING_SZ ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct xgmac_dma_desc*) ; 
 scalar_t__ FUNC1 (struct xgmac_dma_desc*) ; 
 int FUNC2 (struct xgmac_dma_desc*) ; 
 int FUNC3 (struct xgmac_priv*,struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct xgmac_priv*) ; 

__attribute__((used)) static int FUNC15(struct xgmac_priv *priv, int limit)
{
	unsigned int entry;
	unsigned int count = 0;
	struct xgmac_dma_desc *p;

	while (count < limit) {
		int ip_checksum;
		struct sk_buff *skb;
		int frame_len;

		if (!FUNC4(priv->rx_head, priv->rx_tail, DMA_RX_RING_SZ))
			break;

		entry = priv->rx_tail;
		p = priv->dma_rx + entry;
		if (FUNC1(p))
			break;

		count++;
		priv->rx_tail = FUNC5(priv->rx_tail, DMA_RX_RING_SZ);

		/* read the status of the incoming frame */
		ip_checksum = FUNC3(priv, p);
		if (ip_checksum < 0)
			continue;

		skb = priv->rx_skbuff[entry];
		if (FUNC13(!skb)) {
			FUNC10(priv->dev, "Inconsistent Rx descriptor chain\n");
			break;
		}
		priv->rx_skbuff[entry] = NULL;

		frame_len = FUNC2(p);
		FUNC9(priv->dev, "RX frame size %d, COE status: %d\n",
			frame_len, ip_checksum);

		FUNC12(skb, frame_len);
		FUNC6(priv->device, FUNC0(p),
				 priv->dma_buf_sz - NET_IP_ALIGN, DMA_FROM_DEVICE);

		skb->protocol = FUNC7(skb, priv->dev);
		skb->ip_summed = ip_checksum;
		if (ip_checksum == CHECKSUM_NONE)
			FUNC11(skb);
		else
			FUNC8(&priv->napi, skb);
	}

	FUNC14(priv);

	return count;
}