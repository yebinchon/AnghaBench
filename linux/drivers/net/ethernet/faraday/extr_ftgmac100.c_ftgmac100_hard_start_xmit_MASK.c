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
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftgmac100_txdes {void* txdes0; void* txdes3; void* txdes1; } ;
struct ftgmac100 {unsigned int tx_pointer; int txdes0_edotr_mask; struct ftgmac100_txdes* txdes; scalar_t__ base; struct sk_buff** tx_skbs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int dma_addr_t ;
struct TYPE_4__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FTGMAC100_OFFSET_NPTXPD ; 
 int FTGMAC100_TXDES0_FTS ; 
 int FTGMAC100_TXDES0_LTS ; 
 int FUNC0 (unsigned int) ; 
 int FTGMAC100_TXDES0_TXDMA_OWN ; 
 int FTGMAC100_TXDES1_INS_VLANTAG ; 
 scalar_t__ MAX_PKT_SIZE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ TX_THRESHOLD ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct ftgmac100*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ftgmac100*,unsigned int,struct sk_buff*,struct ftgmac100_txdes*,int) ; 
 unsigned int FUNC9 (struct ftgmac100*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC11 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int FUNC13 (void*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*) ; 
 struct ftgmac100* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC22 (struct sk_buff*) ; 
 TYPE_2__* FUNC23 (struct sk_buff*) ; 
 int FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC28(struct sk_buff *skb,
					     struct net_device *netdev)
{
	struct ftgmac100 *priv = FUNC17(netdev);
	struct ftgmac100_txdes *txdes, *first;
	unsigned int pointer, nfrags, len, i, j;
	u32 f_ctl_stat, ctl_stat, csum_vlan;
	dma_addr_t map;

	/* The HW doesn't pad small frames */
	if (FUNC6(skb)) {
		netdev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	/* Reject oversize packets */
	if (FUNC27(skb->len > MAX_PKT_SIZE)) {
		if (FUNC14())
			FUNC15(netdev, "tx packet too big\n");
		goto drop;
	}

	/* Do we have a limit on #fragments ? I yet have to get a reply
	 * from Aspeed. If there's one I haven't hit it.
	 */
	nfrags = FUNC23(skb)->nr_frags;

	/* Setup HW checksumming */
	csum_vlan = 0;
	if (skb->ip_summed == CHECKSUM_PARTIAL &&
	    !FUNC10(skb, &csum_vlan))
		goto drop;

	/* Add VLAN tag */
	if (FUNC25(skb)) {
		csum_vlan |= FTGMAC100_TXDES1_INS_VLANTAG;
		csum_vlan |= FUNC24(skb) & 0xffff;
	}

	/* Get header len */
	len = FUNC22(skb);

	/* Map the packet head */
	map = FUNC3(priv->dev, skb->data, len, DMA_TO_DEVICE);
	if (FUNC4(priv->dev, map)) {
		if (FUNC14())
			FUNC16(netdev, "map tx packet head failed\n");
		goto drop;
	}

	/* Grab the next free tx descriptor */
	pointer = priv->tx_pointer;
	txdes = first = &priv->txdes[pointer];

	/* Setup it up with the packet head. Don't write the head to the
	 * ring just yet
	 */
	priv->tx_skbs[pointer] = skb;
	f_ctl_stat = FUNC7(priv, pointer);
	f_ctl_stat |= FTGMAC100_TXDES0_TXDMA_OWN;
	f_ctl_stat |= FUNC0(len);
	f_ctl_stat |= FTGMAC100_TXDES0_FTS;
	if (nfrags == 0)
		f_ctl_stat |= FTGMAC100_TXDES0_LTS;
	txdes->txdes3 = FUNC1(map);
	txdes->txdes1 = FUNC1(csum_vlan);

	/* Next descriptor */
	pointer = FUNC9(priv, pointer);

	/* Add the fragments */
	for (i = 0; i < nfrags; i++) {
		skb_frag_t *frag = &FUNC23(skb)->frags[i];

		len = FUNC21(frag);

		/* Map it */
		map = FUNC20(priv->dev, frag, 0, len,
				       DMA_TO_DEVICE);
		if (FUNC4(priv->dev, map))
			goto dma_err;

		/* Setup descriptor */
		priv->tx_skbs[pointer] = skb;
		txdes = &priv->txdes[pointer];
		ctl_stat = FUNC7(priv, pointer);
		ctl_stat |= FTGMAC100_TXDES0_TXDMA_OWN;
		ctl_stat |= FUNC0(len);
		if (i == (nfrags - 1))
			ctl_stat |= FTGMAC100_TXDES0_LTS;
		txdes->txdes0 = FUNC1(ctl_stat);
		txdes->txdes1 = 0;
		txdes->txdes3 = FUNC1(map);

		/* Next one */
		pointer = FUNC9(priv, pointer);
	}

	/* Order the previous packet and descriptor udpates
	 * before setting the OWN bit on the first descriptor.
	 */
	FUNC5();
	first->txdes0 = FUNC1(f_ctl_stat);

	/* Update next TX pointer */
	priv->tx_pointer = pointer;

	/* If there isn't enough room for all the fragments of a new packet
	 * in the TX ring, stop the queue. The sequence below is race free
	 * vs. a concurrent restart in ftgmac100_poll()
	 */
	if (FUNC27(FUNC11(priv) < TX_THRESHOLD)) {
		FUNC18(netdev);
		/* Order the queue stop with the test below */
		FUNC26();
		if (FUNC11(priv) >= TX_THRESHOLD)
			FUNC19(netdev);
	}

	/* Poke transmitter to read the updated TX descriptors */
	FUNC12(1, priv->base + FTGMAC100_OFFSET_NPTXPD);

	return NETDEV_TX_OK;

 dma_err:
	if (FUNC14())
		FUNC16(netdev, "map tx fragment failed\n");

	/* Free head */
	pointer = priv->tx_pointer;
	FUNC8(priv, pointer, skb, first, f_ctl_stat);
	first->txdes0 = FUNC1(f_ctl_stat & priv->txdes0_edotr_mask);

	/* Then all fragments */
	for (j = 0; j < i; j++) {
		pointer = FUNC9(priv, pointer);
		txdes = &priv->txdes[pointer];
		ctl_stat = FUNC13(txdes->txdes0);
		FUNC8(priv, pointer, skb, txdes, ctl_stat);
		txdes->txdes0 = FUNC1(ctl_stat & priv->txdes0_edotr_mask);
	}

	/* This cannot be reached if we successfully mapped the
	 * last fragment, so we know ftgmac100_free_tx_packet()
	 * hasn't freed the skb yet.
	 */
 drop:
	/* Drop the packet */
	FUNC2(skb);
	netdev->stats.tx_dropped++;

	return NETDEV_TX_OK;
}