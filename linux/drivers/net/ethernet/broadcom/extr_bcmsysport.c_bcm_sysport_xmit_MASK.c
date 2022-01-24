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
typedef  unsigned int u32 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct bcm_sysport_tx_ring {scalar_t__ desc_count; size_t curr_desc; size_t size; int /*<<< orphan*/  lock; int /*<<< orphan*/  index; struct bcm_sysport_cb* cbs; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dma_failed; } ;
struct bcm_sysport_priv {TYPE_2__ mib; scalar_t__ tsb_en; struct bcm_sysport_tx_ring* tx_rings; TYPE_1__* pdev; } ;
struct bcm_sysport_cb {struct sk_buff* skb; } ;
typedef  int netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 unsigned int DESC_ADDR_HI_MASK ; 
 unsigned int DESC_EOP ; 
 unsigned int DESC_L4_CSUM ; 
 unsigned int DESC_LEN_SHIFT ; 
 unsigned int DESC_SOP ; 
 unsigned int DESC_STATUS_SHIFT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int TX_STATUS_APP_CRC ; 
 struct sk_buff* FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sysport_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_sysport_cb*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,size_t) ; 
 struct netdev_queue* FUNC9 (struct net_device*,size_t) ; 
 struct bcm_sysport_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct netdev_queue*) ; 
 size_t FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct bcm_sysport_priv*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  tx_queued ; 
 scalar_t__ FUNC18 (int) ; 
 unsigned int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC20(struct sk_buff *skb,
				    struct net_device *dev)
{
	struct bcm_sysport_priv *priv = FUNC10(dev);
	struct device *kdev = &priv->pdev->dev;
	struct bcm_sysport_tx_ring *ring;
	struct bcm_sysport_cb *cb;
	struct netdev_queue *txq;
	u32 len_status, addr_lo;
	unsigned int skb_len;
	unsigned long flags;
	dma_addr_t mapping;
	u16 queue;
	int ret;

	queue = FUNC14(skb);
	txq = FUNC9(dev, queue);
	ring = &priv->tx_rings[queue];

	/* lock against tx reclaim in BH context and TX ring full interrupt */
	FUNC15(&ring->lock, flags);
	if (FUNC18(ring->desc_count == 0)) {
		FUNC13(txq);
		FUNC8(dev, "queue %d awake and ring full!\n", queue);
		ret = NETDEV_TX_BUSY;
		goto out;
	}

	/* Insert TSB and checksum infos */
	if (priv->tsb_en) {
		skb = FUNC2(skb, dev);
		if (!skb) {
			ret = NETDEV_TX_OK;
			goto out;
		}
	}

	skb_len = skb->len;

	mapping = FUNC3(kdev, skb->data, skb_len, DMA_TO_DEVICE);
	if (FUNC4(kdev, mapping)) {
		priv->mib.tx_dma_failed++;
		FUNC12(priv, tx_err, dev, "DMA map failed at %p (len=%d)\n",
			  skb->data, skb_len);
		ret = NETDEV_TX_OK;
		goto out;
	}

	/* Remember the SKB for future freeing */
	cb = &ring->cbs[ring->curr_desc];
	cb->skb = skb;
	FUNC5(cb, dma_addr, mapping);
	FUNC6(cb, dma_len, skb_len);

	addr_lo = FUNC7(mapping);
	len_status = FUNC19(mapping) & DESC_ADDR_HI_MASK;
	len_status |= (skb_len << DESC_LEN_SHIFT);
	len_status |= (DESC_SOP | DESC_EOP | TX_STATUS_APP_CRC) <<
		       DESC_STATUS_SHIFT;
	if (skb->ip_summed == CHECKSUM_PARTIAL)
		len_status |= (DESC_L4_CSUM << DESC_STATUS_SHIFT);

	ring->curr_desc++;
	if (ring->curr_desc == ring->size)
		ring->curr_desc = 0;
	ring->desc_count--;

	/* Ports are latched, so write upper address first */
	FUNC17(priv, len_status, FUNC0(ring->index));
	FUNC17(priv, addr_lo, FUNC1(ring->index));

	/* Check ring space and update SW control flow */
	if (ring->desc_count == 0)
		FUNC13(txq);

	FUNC11(priv, tx_queued, dev, "ring=%d desc_count=%d, curr_desc=%d\n",
		  ring->index, ring->desc_count, ring->curr_desc);

	ret = NETDEV_TX_OK;
out:
	FUNC16(&ring->lock, flags);
	return ret;
}