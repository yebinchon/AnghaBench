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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rtl8169_private {unsigned int cur_tx; TYPE_3__* tx_skb; struct TxDesc* TxDescArray; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct device {int dummy; } ;
struct TxDesc {int /*<<< orphan*/  opts1; int /*<<< orphan*/  opts2; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int len; struct sk_buff* skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DescOwn ; 
 int FirstFrag ; 
 int LastFrag ; 
 int /*<<< orphan*/  MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 unsigned int NUM_TX_DESC ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  drv ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 struct rtl8169_private* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC15 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtl8169_private*,struct sk_buff*,int*) ; 
 int FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,TYPE_3__*,struct TxDesc*) ; 
 int FUNC20 (struct rtl8169_private*,struct sk_buff*,int*) ; 
 scalar_t__ FUNC21 (struct rtl8169_private*) ; 
 scalar_t__ FUNC22 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sk_buff*) ; 
 TYPE_2__* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 struct device* FUNC28 (struct rtl8169_private*) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 

__attribute__((used)) static netdev_tx_t FUNC31(struct sk_buff *skb,
				      struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC9(dev);
	unsigned int entry = tp->cur_tx % NUM_TX_DESC;
	struct TxDesc *txd = tp->TxDescArray + entry;
	struct device *d = FUNC28(tp);
	dma_addr_t mapping;
	u32 opts[2], len;
	bool stop_queue;
	bool door_bell;
	int frags;

	if (FUNC29(!FUNC22(tp, FUNC24(skb)->nr_frags))) {
		FUNC11(tp, drv, dev, "BUG! Tx Ring full when queue awake!\n");
		goto err_stop_0;
	}

	if (FUNC29(FUNC7(txd->opts1) & DescOwn))
		goto err_stop_0;

	opts[1] = FUNC18(skb);
	opts[0] = DescOwn;

	if (FUNC21(tp)) {
		if (!FUNC17(tp, skb, opts))
			goto err_dma_0;
	} else {
		FUNC16(skb, opts);
	}

	len = FUNC23(skb);
	mapping = FUNC4(d, skb->data, len, DMA_TO_DEVICE);
	if (FUNC29(FUNC5(d, mapping))) {
		if (FUNC8())
			FUNC11(tp, drv, dev, "Failed to map TX DMA!\n");
		goto err_dma_0;
	}

	tp->tx_skb[entry].len = len;
	txd->addr = FUNC2(mapping);

	frags = FUNC20(tp, skb, opts);
	if (frags < 0)
		goto err_dma_1;
	else if (frags)
		opts[0] |= FirstFrag;
	else {
		opts[0] |= FirstFrag | LastFrag;
		tp->tx_skb[entry].skb = skb;
	}

	txd->opts2 = FUNC1(opts[1]);

	FUNC25(skb);

	/* Force memory writes to complete before releasing descriptor */
	FUNC6();

	door_bell = FUNC0(dev, skb->len, FUNC10());

	txd->opts1 = FUNC15(opts[0], len, entry);

	/* Force all memory writes to complete before notifying device */
	FUNC30();

	tp->cur_tx += frags + 1;

	stop_queue = !FUNC22(tp, MAX_SKB_FRAGS);
	if (FUNC29(stop_queue)) {
		/* Avoid wrongly optimistic queue wake-up: rtl_tx thread must
		 * not miss a ring update when it notices a stopped queue.
		 */
		FUNC27();
		FUNC13(dev);
		door_bell = true;
	}

	if (door_bell)
		FUNC14(tp);

	if (FUNC29(stop_queue)) {
		/* Sync with rtl_tx:
		 * - publish queue status and cur_tx ring index (write barrier)
		 * - refresh dirty_tx ring index (read barrier).
		 * May the current thread have a pessimistic view of the ring
		 * status and forget to wake up queue, a racing rtl_tx thread
		 * can't.
		 */
		FUNC26();
		if (FUNC22(tp, MAX_SKB_FRAGS))
			FUNC12(dev);
	}

	return NETDEV_TX_OK;

err_dma_1:
	FUNC19(d, tp->tx_skb + entry, txd);
err_dma_0:
	FUNC3(skb);
	dev->stats.tx_dropped++;
	return NETDEV_TX_OK;

err_stop_0:
	FUNC13(dev);
	dev->stats.tx_dropped++;
	return NETDEV_TX_BUSY;
}