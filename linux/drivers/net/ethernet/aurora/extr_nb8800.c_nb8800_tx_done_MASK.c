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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct nb8800_tx_desc {scalar_t__ report; } ;
struct nb8800_tx_buf {int ready; struct sk_buff* skb; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_addr; } ;
struct nb8800_priv {unsigned int tx_next; unsigned int tx_done; int /*<<< orphan*/  tx_free; struct nb8800_tx_buf* tx_bufs; struct nb8800_tx_desc* tx_descs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 unsigned int TX_DESC_COUNT ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,unsigned int,unsigned int) ; 
 struct nb8800_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC9(dev);
	unsigned int limit = priv->tx_next;
	unsigned int done = priv->tx_done;
	unsigned int packets = 0;
	unsigned int len = 0;

	while (done != limit) {
		struct nb8800_tx_desc *txd = &priv->tx_descs[done];
		struct nb8800_tx_buf *txb = &priv->tx_bufs[done];
		struct sk_buff *skb;

		if (!txd->report)
			break;

		skb = txb->skb;
		len += skb->len;

		FUNC5(&dev->dev, txb->dma_addr, txb->dma_len,
				 DMA_TO_DEVICE);

		if (FUNC0(txd->report)) {
			FUNC7(dev, txd->report);
			FUNC6(skb);
		} else {
			FUNC4(skb);
		}

		dev->stats.tx_packets++;
		dev->stats.tx_bytes += FUNC1(txd->report);
		dev->stats.collisions += FUNC2(txd->report);

		txb->skb = NULL;
		txb->ready = false;
		txd->report = 0;

		done = (done + 1) % TX_DESC_COUNT;
		packets++;
	}

	if (packets) {
		FUNC11();
		FUNC3(packets, &priv->tx_free);
		FUNC8(dev, packets, len);
		FUNC10(dev);
		priv->tx_done = done;
	}
}