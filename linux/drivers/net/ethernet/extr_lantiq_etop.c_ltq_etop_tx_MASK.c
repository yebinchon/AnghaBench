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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct ltq_etop_priv {int /*<<< orphan*/  lock; TYPE_1__* pdev; struct ltq_etop_chan* ch; } ;
struct TYPE_4__ {size_t desc; struct ltq_dma_desc* desc_base; } ;
struct ltq_etop_chan {TYPE_2__ dma; struct sk_buff** skb; } ;
struct ltq_dma_desc {int ctl; unsigned int addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETH_ZLEN ; 
 size_t LTQ_DESC_NUM ; 
 int LTQ_DMA_C ; 
 int LTQ_DMA_EOP ; 
 int LTQ_DMA_OWN ; 
 int LTQ_DMA_SIZE_MASK ; 
 int LTQ_DMA_SOP ; 
 int FUNC1 (unsigned int) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct netdev_queue* FUNC5 (struct net_device*,int) ; 
 struct ltq_etop_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct sk_buff *skb, struct net_device *dev)
{
	int queue = FUNC9(skb);
	struct netdev_queue *txq = FUNC5(dev, queue);
	struct ltq_etop_priv *priv = FUNC6(dev);
	struct ltq_etop_chan *ch = &priv->ch[(queue << 1) | 1];
	struct ltq_dma_desc *desc = &ch->dma.desc_base[ch->dma.desc];
	int len;
	unsigned long flags;
	u32 byte_offset;

	len = skb->len < ETH_ZLEN ? ETH_ZLEN : skb->len;

	if ((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) || ch->skb[ch->dma.desc]) {
		FUNC2(skb);
		FUNC4(dev, "tx ring full\n");
		FUNC8(txq);
		return NETDEV_TX_BUSY;
	}

	/* dma needs to start on a 16 byte aligned address */
	byte_offset = FUNC0(skb->data) % 16;
	ch->skb[ch->dma.desc] = skb;

	FUNC7(dev);

	FUNC10(&priv->lock, flags);
	desc->addr = ((unsigned int) FUNC3(&priv->pdev->dev, skb->data, len,
						DMA_TO_DEVICE)) - byte_offset;
	FUNC12();
	desc->ctl = LTQ_DMA_OWN | LTQ_DMA_SOP | LTQ_DMA_EOP |
		FUNC1(byte_offset) | (len & LTQ_DMA_SIZE_MASK);
	ch->dma.desc++;
	ch->dma.desc %= LTQ_DESC_NUM;
	FUNC11(&priv->lock, flags);

	if (ch->dma.desc_base[ch->dma.desc].ctl & LTQ_DMA_OWN)
		FUNC8(txq);

	return NETDEV_TX_OK;
}