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
typedef  unsigned int u64 ;
struct tx_ring_info {int prod; scalar_t__ mark_counter; scalar_t__ mark_freq; int wrap_bit; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_channel; TYPE_2__* tx_buffs; int /*<<< orphan*/  mark_pending; } ;
struct tx_pkt_hdr {scalar_t__ resv; int /*<<< orphan*/  flags; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct niu {int /*<<< orphan*/  device; TYPE_1__* ops; struct tx_ring_info* tx_rings; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ethhdr {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {unsigned int mapping; struct sk_buff* skb; } ;
struct TYPE_4__ {unsigned int (* map_single ) (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ;unsigned int (* map_page ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int MAX_TX_DESC_LEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (struct tx_ring_info*,int) ; 
 scalar_t__ FUNC1 (struct tx_ring_info*) ; 
 unsigned int TX_DESC_MARK ; 
 unsigned int TX_DESC_SOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TX_RING_KICK_WRAP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct netdev_queue* FUNC7 (struct net_device*,int) ; 
 struct niu* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct ethhdr*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct tx_ring_info*,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC13 (struct tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC17 (int /*<<< orphan*/  const*) ; 
 int FUNC18 (struct sk_buff*) ; 
 unsigned int FUNC19 (struct sk_buff*) ; 
 unsigned int FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 struct tx_pkt_hdr* FUNC22 (struct sk_buff*,unsigned long) ; 
 struct sk_buff* FUNC23 (struct sk_buff*,unsigned int) ; 
 TYPE_3__* FUNC24 (struct sk_buff*) ; 
 unsigned int FUNC25 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC28(struct sk_buff *skb,
				  struct net_device *dev)
{
	struct niu *np = FUNC8(dev);
	unsigned long align, headroom;
	struct netdev_queue *txq;
	struct tx_ring_info *rp;
	struct tx_pkt_hdr *tp;
	unsigned int len, nfg;
	struct ethhdr *ehdr;
	int prod, i, tlen;
	u64 mapping, mrk;

	i = FUNC18(skb);
	rp = &np->tx_rings[i];
	txq = FUNC7(dev, i);

	if (FUNC13(rp) <= (FUNC24(skb)->nr_frags + 1)) {
		FUNC9(txq);
		FUNC4(np->device, "%s: BUG! Tx ring full when queue awake!\n", dev->name);
		rp->tx_errors++;
		return NETDEV_TX_BUSY;
	}

	if (FUNC5(skb))
		goto out;

	len = sizeof(struct tx_pkt_hdr) + 15;
	if (FUNC20(skb) < len) {
		struct sk_buff *skb_new;

		skb_new = FUNC23(skb, len);
		if (!skb_new)
			goto out_drop;
		FUNC6(skb);
		skb = skb_new;
	} else
		FUNC21(skb);

	align = ((unsigned long) skb->data & (16 - 1));
	headroom = align + sizeof(struct tx_pkt_hdr);

	ehdr = (struct ethhdr *) skb->data;
	tp = FUNC22(skb, headroom);

	len = skb->len - sizeof(struct tx_pkt_hdr);
	tp->flags = FUNC3(FUNC11(skb, ehdr, align, len));
	tp->resv = 0;

	len = FUNC19(skb);
	mapping = np->ops->map_single(np->device, skb->data,
				      len, DMA_TO_DEVICE);

	prod = rp->prod;

	rp->tx_buffs[prod].skb = skb;
	rp->tx_buffs[prod].mapping = mapping;

	mrk = TX_DESC_SOP;
	if (++rp->mark_counter == rp->mark_freq) {
		rp->mark_counter = 0;
		mrk |= TX_DESC_MARK;
		rp->mark_pending++;
	}

	tlen = len;
	nfg = FUNC24(skb)->nr_frags;
	while (tlen > 0) {
		tlen -= MAX_TX_DESC_LEN;
		nfg++;
	}

	while (len > 0) {
		unsigned int this_len = len;

		if (this_len > MAX_TX_DESC_LEN)
			this_len = MAX_TX_DESC_LEN;

		FUNC12(rp, prod, mapping, this_len, mrk, nfg);
		mrk = nfg = 0;

		prod = FUNC0(rp, prod);
		mapping += this_len;
		len -= this_len;
	}

	for (i = 0; i <  FUNC24(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC24(skb)->frags[i];

		len = FUNC17(frag);
		mapping = np->ops->map_page(np->device, FUNC16(frag),
					    FUNC15(frag), len,
					    DMA_TO_DEVICE);

		rp->tx_buffs[prod].skb = NULL;
		rp->tx_buffs[prod].mapping = mapping;

		FUNC12(rp, prod, mapping, len, 0, 0);

		prod = FUNC0(rp, prod);
	}

	if (prod < rp->prod)
		rp->wrap_bit ^= TX_RING_KICK_WRAP;
	rp->prod = prod;

	FUNC14(FUNC2(rp->tx_channel), rp->wrap_bit | (prod << 3));

	if (FUNC27(FUNC13(rp) <= (MAX_SKB_FRAGS + 1))) {
		FUNC9(txq);
		if (FUNC13(rp) > FUNC1(rp))
			FUNC10(txq);
	}

out:
	return NETDEV_TX_OK;

out_drop:
	rp->tx_errors++;
	FUNC6(skb);
	goto out;
}