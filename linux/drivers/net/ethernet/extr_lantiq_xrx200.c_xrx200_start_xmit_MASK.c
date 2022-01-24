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
struct TYPE_3__ {size_t desc; struct ltq_dma_desc* desc_base; } ;
struct xrx200_chan {size_t tx_free; TYPE_1__ dma; struct sk_buff** skb; } ;
struct xrx200_priv {int /*<<< orphan*/  dev; struct xrx200_chan chan_tx; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ltq_dma_desc {int ctl; int addr; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ETH_ZLEN ; 
 size_t LTQ_DESC_NUM ; 
 int LTQ_DMA_C ; 
 int LTQ_DMA_EOP ; 
 int LTQ_DMA_OWN ; 
 int LTQ_DMA_SIZE_MASK ; 
 int LTQ_DMA_SOP ; 
 int FUNC0 (int) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct xrx200_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct net_device *net_dev)
{
	struct xrx200_priv *priv = FUNC5(net_dev);
	struct xrx200_chan *ch = &priv->chan_tx;
	struct ltq_dma_desc *desc = &ch->dma.desc_base[ch->dma.desc];
	u32 byte_offset;
	dma_addr_t mapping;
	int len;

	skb->dev = net_dev;
	if (FUNC8(skb, ETH_ZLEN)) {
		net_dev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	len = skb->len;

	if ((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) || ch->skb[ch->dma.desc]) {
		FUNC4(net_dev, "tx ring full\n");
		FUNC7(net_dev);
		return NETDEV_TX_BUSY;
	}

	ch->skb[ch->dma.desc] = skb;

	mapping = FUNC2(priv->dev, skb->data, len, DMA_TO_DEVICE);
	if (FUNC9(FUNC3(priv->dev, mapping)))
		goto err_drop;

	/* dma needs to start on a 16 byte aligned address */
	byte_offset = mapping % 16;

	desc->addr = mapping - byte_offset;
	/* Make sure the address is written before we give it to HW */
	FUNC10();
	desc->ctl = LTQ_DMA_OWN | LTQ_DMA_SOP | LTQ_DMA_EOP |
		FUNC0(byte_offset) | (len & LTQ_DMA_SIZE_MASK);
	ch->dma.desc++;
	ch->dma.desc %= LTQ_DESC_NUM;
	if (ch->dma.desc == ch->tx_free)
		FUNC7(net_dev);

	FUNC6(net_dev, len);

	return NETDEV_TX_OK;

err_drop:
	FUNC1(skb);
	net_dev->stats.tx_dropped++;
	net_dev->stats.tx_errors++;
	return NETDEV_TX_OK;
}