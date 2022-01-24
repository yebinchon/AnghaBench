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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct nixge_priv {size_t rx_bd_ci; struct nixge_hw_dma_bd* rx_bd_v; int /*<<< orphan*/  napi; scalar_t__ rx_bd_p; } ;
struct nixge_hw_dma_bd {int status; int cntrl; } ;
struct TYPE_4__ {int rx_packets; int /*<<< orphan*/  rx_bytes; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int NIXGE_MAX_JUMBO_FRAME_SIZE ; 
 int RX_BD_NUM ; 
 int XAXIDMA_BD_STS_ACTUAL_LEN_MASK ; 
 int XAXIDMA_BD_STS_COMPLETE_MASK ; 
 int /*<<< orphan*/  XAXIDMA_RX_TDESC_OFFSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct nixge_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nixge_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct nixge_hw_dma_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nixge_hw_dma_bd*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC11 (struct nixge_hw_dma_bd*,scalar_t__) ; 
 int /*<<< orphan*/  phys ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  sw_id_offset ; 

__attribute__((used)) static int FUNC14(struct net_device *ndev, int budget)
{
	struct nixge_priv *priv = FUNC7(ndev);
	struct sk_buff *skb, *new_skb;
	struct nixge_hw_dma_bd *cur_p;
	dma_addr_t tail_p = 0, cur_phys = 0;
	u32 packets = 0;
	u32 length = 0;
	u32 size = 0;

	cur_p = &priv->rx_bd_v[priv->rx_bd_ci];

	while ((cur_p->status & XAXIDMA_BD_STS_COMPLETE_MASK &&
		budget > packets)) {
		tail_p = priv->rx_bd_p + sizeof(*priv->rx_bd_v) *
			 priv->rx_bd_ci;

		skb = (struct sk_buff *)(uintptr_t)
			FUNC9(cur_p, sw_id_offset);

		length = cur_p->status & XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
		if (length > NIXGE_MAX_JUMBO_FRAME_SIZE)
			length = NIXGE_MAX_JUMBO_FRAME_SIZE;

		FUNC2(ndev->dev.parent,
				 FUNC9(cur_p, phys),
				 NIXGE_MAX_JUMBO_FRAME_SIZE,
				 DMA_FROM_DEVICE);

		FUNC13(skb, length);

		skb->protocol = FUNC3(skb, ndev);
		FUNC12(skb);

		/* For now mark them as CHECKSUM_NONE since
		 * we don't have offload capabilities
		 */
		skb->ip_summed = CHECKSUM_NONE;

		FUNC4(&priv->napi, skb);

		size += length;
		packets++;

		new_skb = FUNC5(ndev,
						    NIXGE_MAX_JUMBO_FRAME_SIZE);
		if (!new_skb)
			return packets;

		cur_phys = FUNC0(ndev->dev.parent, new_skb->data,
					  NIXGE_MAX_JUMBO_FRAME_SIZE,
					  DMA_FROM_DEVICE);
		if (FUNC1(ndev->dev.parent, cur_phys)) {
			/* FIXME: bail out and clean up */
			FUNC6(ndev, "Failed to map ...\n");
		}
		FUNC11(cur_p, cur_phys);
		cur_p->cntrl = NIXGE_MAX_JUMBO_FRAME_SIZE;
		cur_p->status = 0;
		FUNC10(cur_p, (uintptr_t)new_skb);

		++priv->rx_bd_ci;
		priv->rx_bd_ci %= RX_BD_NUM;
		cur_p = &priv->rx_bd_v[priv->rx_bd_ci];
	}

	ndev->stats.rx_packets += packets;
	ndev->stats.rx_bytes += size;

	if (tail_p)
		FUNC8(priv, XAXIDMA_RX_TDESC_OFFSET, tail_p);

	return packets;
}