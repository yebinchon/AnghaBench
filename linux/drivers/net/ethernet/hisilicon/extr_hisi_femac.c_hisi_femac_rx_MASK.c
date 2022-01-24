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
typedef  size_t u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct hisi_femac_queue {size_t tail; size_t num; int /*<<< orphan*/ * dma_phys; struct sk_buff** skb; } ;
struct hisi_femac_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; scalar_t__ glb_base; scalar_t__ port_base; struct hisi_femac_queue rxq; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ GLB_IRQ_RAW ; 
 scalar_t__ IQFRM_DES ; 
 int IRQ_INT_RX_RDY ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 size_t RX_FRAME_LEN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,size_t) ; 
 struct hisi_femac_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,size_t) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, int limit)
{
	struct hisi_femac_priv *priv = FUNC6(dev);
	struct hisi_femac_queue *rxq = &priv->rxq;
	struct sk_buff *skb;
	dma_addr_t addr;
	u32 rx_pkt_info, pos, len, rx_pkts_num = 0;

	pos = rxq->tail;
	while (FUNC7(priv->glb_base + GLB_IRQ_RAW) & IRQ_INT_RX_RDY) {
		rx_pkt_info = FUNC7(priv->port_base + IQFRM_DES);
		len = rx_pkt_info & RX_FRAME_LEN_MASK;
		len -= ETH_FCS_LEN;

		/* tell hardware we will deal with this packet */
		FUNC10(IRQ_INT_RX_RDY, priv->glb_base + GLB_IRQ_RAW);

		rx_pkts_num++;

		skb = rxq->skb[pos];
		if (FUNC9(!skb)) {
			FUNC5(dev, "rx skb NULL. pos=%d\n", pos);
			break;
		}
		rxq->skb[pos] = NULL;

		addr = rxq->dma_phys[pos];
		FUNC1(priv->dev, addr, MAX_FRAME_SIZE,
				 DMA_FROM_DEVICE);
		FUNC8(skb, len);
		if (FUNC9(skb->len > MAX_FRAME_SIZE)) {
			FUNC5(dev, "rcv len err, len = %d\n", skb->len);
			dev->stats.rx_errors++;
			dev->stats.rx_length_errors++;
			FUNC0(skb);
			goto next;
		}

		skb->protocol = FUNC2(skb, dev);
		FUNC4(&priv->napi, skb);
		dev->stats.rx_packets++;
		dev->stats.rx_bytes += skb->len;
next:
		pos = (pos + 1) % rxq->num;
		if (rx_pkts_num >= limit)
			break;
	}
	rxq->tail = pos;

	FUNC3(priv);

	return rx_pkts_num;
}