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
struct TYPE_4__ {int frame_len; } ;
union desc_stat {TYPE_1__ rx; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_6__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct ksz_hw {int rx_cfg; } ;
struct ksz_dma_buf {TYPE_2__* skb; int /*<<< orphan*/  dma; } ;
struct ksz_desc {int dummy; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct ksz_dma_buf* FUNC0 (struct ksz_desc*) ; 
 int DMA_RX_CSUM_TCP ; 
 int DMA_RX_CSUM_UDP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC3 (struct net_device*,int) ; 
 struct dev_priv* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int FUNC9(struct net_device *dev, struct ksz_hw* hw,
	struct ksz_desc *desc, union desc_stat status)
{
	int packet_len;
	struct dev_priv *priv = FUNC4(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_dma_buf *dma_buf;
	struct sk_buff *skb;
	int rx_status;

	/* Received length includes 4-byte CRC. */
	packet_len = status.rx.frame_len - 4;

	dma_buf = FUNC0(desc);
	FUNC6(
		hw_priv->pdev, dma_buf->dma, packet_len + 4,
		PCI_DMA_FROMDEVICE);

	do {
		/* skb->data != skb->head */
		skb = FUNC3(dev, packet_len + 2);
		if (!skb) {
			dev->stats.rx_dropped++;
			return -ENOMEM;
		}

		/*
		 * Align socket buffer in 4-byte boundary for better
		 * performance.
		 */
		FUNC8(skb, 2);

		FUNC7(skb, dma_buf->skb->data, packet_len);
	} while (0);

	skb->protocol = FUNC2(skb, dev);

	if (hw->rx_cfg & (DMA_RX_CSUM_UDP | DMA_RX_CSUM_TCP))
		FUNC1(skb);

	/* Update receive statistics. */
	dev->stats.rx_packets++;
	dev->stats.rx_bytes += packet_len;

	/* Notify upper layer for received packet. */
	rx_status = FUNC5(skb);

	return 0;
}