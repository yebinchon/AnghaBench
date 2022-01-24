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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct bcm_enet_priv {size_t tx_curr_desc; int dma_desc_shift; size_t tx_ring_size; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_desc_count; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  dma_chan_en_mask; TYPE_1__* pdev; struct sk_buff** tx_skb; struct bcm_enet_desc* tx_desc_cpu; scalar_t__ enet_is_sw; } ;
struct bcm_enet_desc {int len_stat; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMADESC_APPEND_CRC ; 
 int DMADESC_ESOP_MASK ; 
 int DMADESC_LENGTH_MASK ; 
 int DMADESC_LENGTH_SHIFT ; 
 int DMADESC_OWNER_MASK ; 
 int DMADESC_WRAP_MASK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ENETDMAC_CHANCFG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct sk_buff*,int) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static netdev_tx_t
FUNC13(struct sk_buff *skb, struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct bcm_enet_desc *desc;
	u32 len_stat;
	netdev_tx_t ret;

	priv = FUNC4(dev);

	/* lock against tx reclaim */
	FUNC9(&priv->tx_lock);

	/* make sure  the tx hw queue  is not full,  should not happen
	 * since we stop queue before it's the case */
	if (FUNC11(!priv->tx_desc_count)) {
		FUNC5(dev);
		FUNC0(&priv->pdev->dev, "xmit called with no tx desc "
			"available?\n");
		ret = NETDEV_TX_BUSY;
		goto out_unlock;
	}

	/* pad small packets sent on a switch device */
	if (priv->enet_is_sw && skb->len < 64) {
		int needed = 64 - skb->len;
		char *data;

		if (FUNC11(FUNC8(skb) < needed)) {
			struct sk_buff *nskb;

			nskb = FUNC6(skb, 0, needed, GFP_ATOMIC);
			if (!nskb) {
				ret = NETDEV_TX_BUSY;
				goto out_unlock;
			}
			FUNC1(skb);
			skb = nskb;
		}
		data = FUNC7(skb, needed);
	}

	/* point to the next available desc */
	desc = &priv->tx_desc_cpu[priv->tx_curr_desc];
	priv->tx_skb[priv->tx_curr_desc] = skb;

	/* fill descriptor */
	desc->address = FUNC2(&priv->pdev->dev, skb->data, skb->len,
				       DMA_TO_DEVICE);

	len_stat = (skb->len << DMADESC_LENGTH_SHIFT) & DMADESC_LENGTH_MASK;
	len_stat |= (DMADESC_ESOP_MASK >> priv->dma_desc_shift) |
		DMADESC_APPEND_CRC |
		DMADESC_OWNER_MASK;

	priv->tx_curr_desc++;
	if (priv->tx_curr_desc == priv->tx_ring_size) {
		priv->tx_curr_desc = 0;
		len_stat |= (DMADESC_WRAP_MASK >> priv->dma_desc_shift);
	}
	priv->tx_desc_count--;

	/* dma might be already polling, make sure we update desc
	 * fields in correct order */
	FUNC12();
	desc->len_stat = len_stat;
	FUNC12();

	/* kick tx dma */
	FUNC3(priv, priv->dma_chan_en_mask,
				 ENETDMAC_CHANCFG, priv->tx_chan);

	/* stop queue if no more desc available */
	if (!priv->tx_desc_count)
		FUNC5(dev);

	dev->stats.tx_bytes += skb->len;
	dev->stats.tx_packets++;
	ret = NETDEV_TX_OK;

out_unlock:
	FUNC10(&priv->tx_lock);
	return ret;
}