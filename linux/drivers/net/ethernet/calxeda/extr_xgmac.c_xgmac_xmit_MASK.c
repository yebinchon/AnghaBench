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
typedef  unsigned int u32 ;
struct xgmac_priv {int tx_irq_cnt; unsigned int tx_head; int /*<<< orphan*/  device; struct sk_buff** tx_skbuff; struct xgmac_dma_desc* dma_tx; scalar_t__ base; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DMA_TX_RING_SZ ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 unsigned int TXDESC_CSUM_ALL ; 
 unsigned int TXDESC_FIRST_SEG ; 
 unsigned int TXDESC_INTERRUPT ; 
 unsigned int TXDESC_LAST_SEG ; 
 scalar_t__ XGMAC_DMA_TX_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgmac_dma_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xgmac_dma_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgmac_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC16 (struct sk_buff*) ; 
 TYPE_1__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (struct xgmac_priv*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC23(struct sk_buff *skb, struct net_device *dev)
{
	struct xgmac_priv *priv = FUNC11(dev);
	unsigned int entry;
	int i;
	u32 irq_flag;
	int nfrags = FUNC17(skb)->nr_frags;
	struct xgmac_dma_desc *desc, *first;
	unsigned int desc_flags;
	unsigned int len;
	dma_addr_t paddr;

	priv->tx_irq_cnt = (priv->tx_irq_cnt + 1) & (DMA_TX_RING_SZ/4 - 1);
	irq_flag = priv->tx_irq_cnt ? 0 : TXDESC_INTERRUPT;

	desc_flags = (skb->ip_summed == CHECKSUM_PARTIAL) ?
		TXDESC_CSUM_ALL : 0;
	entry = priv->tx_head;
	desc = priv->dma_tx + entry;
	first = desc;

	len = FUNC16(skb);
	paddr = FUNC6(priv->device, skb->data, len, DMA_TO_DEVICE);
	if (FUNC7(priv->device, paddr)) {
		FUNC5(skb);
		return NETDEV_TX_OK;
	}
	priv->tx_skbuff[entry] = skb;
	FUNC3(desc, paddr, len);

	for (i = 0; i < nfrags; i++) {
		skb_frag_t *frag = &FUNC17(skb)->frags[i];

		len = FUNC15(frag);

		paddr = FUNC14(priv->device, frag, 0, len,
					 DMA_TO_DEVICE);
		if (FUNC7(priv->device, paddr))
			goto dma_err;

		entry = FUNC8(entry, DMA_TX_RING_SZ);
		desc = priv->dma_tx + entry;
		priv->tx_skbuff[entry] = skb;

		FUNC3(desc, paddr, len);
		if (i < (nfrags - 1))
			FUNC4(desc, desc_flags);
	}

	/* Interrupt on completition only for the latest segment */
	if (desc != first)
		FUNC4(desc, desc_flags |
			TXDESC_LAST_SEG | irq_flag);
	else
		desc_flags |= TXDESC_LAST_SEG | irq_flag;

	/* Set owner on first desc last to avoid race condition */
	FUNC21();
	FUNC4(first, desc_flags | TXDESC_FIRST_SEG);

	FUNC22(1, priv->base + XGMAC_DMA_TX_POLL);

	priv->tx_head = FUNC8(entry, DMA_TX_RING_SZ);

	/* Ensure tx_head update is visible to tx completion */
	FUNC18();
	if (FUNC20(FUNC19(priv) <= MAX_SKB_FRAGS)) {
		FUNC13(dev);
		/* Ensure netif_stop_queue is visible to tx completion */
		FUNC18();
		if (FUNC19(priv) > MAX_SKB_FRAGS)
			FUNC12(dev);
	}
	return NETDEV_TX_OK;

dma_err:
	entry = priv->tx_head;
	for ( ; i > 0; i--) {
		entry = FUNC8(entry, DMA_TX_RING_SZ);
		desc = priv->dma_tx + entry;
		priv->tx_skbuff[entry] = NULL;
		FUNC9(priv->device, FUNC1(desc),
			       FUNC2(desc), DMA_TO_DEVICE);
		FUNC0(desc);
	}
	desc = first;
	FUNC10(priv->device, FUNC1(desc),
			 FUNC2(desc), DMA_TO_DEVICE);
	FUNC5(skb);
	return NETDEV_TX_OK;
}