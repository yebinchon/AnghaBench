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
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {scalar_t__ ip_summed; int const csum_offset; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct cas {int* tx_new; int /*<<< orphan*/ * tx_lock; scalar_t__ regs; TYPE_2__* pdev; struct sk_buff*** tx_skbs; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int FUNC1 (struct cas*) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct cas*,int) ; 
 int TX_DESC_CSUM_EN ; 
 int /*<<< orphan*/  TX_DESC_CSUM_START ; 
 int /*<<< orphan*/  TX_DESC_CSUM_STUFF ; 
 int FUNC4 (int,int) ; 
 int TX_DESC_SOF ; 
 int FUNC5 (struct cas*,unsigned long,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct cas*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 int FUNC20 (int /*<<< orphan*/  const*) ; 
 int FUNC21 (struct sk_buff*) ; 
 TYPE_1__* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC25 (struct cas*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct cas*,int,int,int) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC30(struct cas *cp, int ring,
				    struct sk_buff *skb)
{
	struct net_device *dev = cp->dev;
	int entry, nr_frags, frag, tabort, tentry;
	dma_addr_t mapping;
	unsigned long flags;
	u64 ctrl;
	u32 len;

	FUNC23(&cp->tx_lock[ring], flags);

	/* This is a hard error, log it. */
	if (FUNC3(cp, ring) <=
	    FUNC1(cp)*(FUNC22(skb)->nr_frags + 1)) {
		FUNC12(dev);
		FUNC24(&cp->tx_lock[ring], flags);
		FUNC10(dev, "BUG! Tx Ring full when queue awake!\n");
		return 1;
	}

	ctrl = 0;
	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		const u64 csum_start_off = FUNC15(skb);
		const u64 csum_stuff_off = csum_start_off + skb->csum_offset;

		ctrl =  TX_DESC_CSUM_EN |
			FUNC0(TX_DESC_CSUM_START, csum_start_off) |
			FUNC0(TX_DESC_CSUM_STUFF, csum_stuff_off);
	}

	entry = cp->tx_new[ring];
	cp->tx_skbs[ring][entry] = skb;

	nr_frags = FUNC22(skb)->nr_frags;
	len = FUNC21(skb);
	mapping = FUNC14(cp->pdev, FUNC28(skb->data),
			       FUNC13(skb->data), len,
			       PCI_DMA_TODEVICE);

	tentry = entry;
	tabort = FUNC5(cp, (unsigned long) skb->data, len);
	if (FUNC27(tabort)) {
		/* NOTE: len is always >  tabort */
		FUNC8(cp, ring, entry, mapping, len - tabort,
			      ctrl | TX_DESC_SOF, 0);
		entry = FUNC4(ring, entry);

		FUNC16(skb, len - tabort,
			      FUNC25(cp, ring, entry), tabort);
		mapping = FUNC26(cp, ring, entry, tentry);
		FUNC8(cp, ring, entry, mapping, tabort, ctrl,
			      (nr_frags == 0));
	} else {
		FUNC8(cp, ring, entry, mapping, len, ctrl |
			      TX_DESC_SOF, (nr_frags == 0));
	}
	entry = FUNC4(ring, entry);

	for (frag = 0; frag < nr_frags; frag++) {
		const skb_frag_t *fragp = &FUNC22(skb)->frags[frag];

		len = FUNC20(fragp);
		mapping = FUNC17(&cp->pdev->dev, fragp, 0, len,
					   DMA_TO_DEVICE);

		tabort = FUNC5(cp, FUNC18(fragp), len);
		if (FUNC27(tabort)) {
			void *addr;

			/* NOTE: len is always > tabort */
			FUNC8(cp, ring, entry, mapping, len - tabort,
				      ctrl, 0);
			entry = FUNC4(ring, entry);

			addr = FUNC6(FUNC19(fragp));
			FUNC9(FUNC25(cp, ring, entry),
			       addr + FUNC18(fragp) + len - tabort,
			       tabort);
			FUNC7(addr);
			mapping = FUNC26(cp, ring, entry, tentry);
			len     = tabort;
		}

		FUNC8(cp, ring, entry, mapping, len, ctrl,
			      (frag + 1 == nr_frags));
		entry = FUNC4(ring, entry);
	}

	cp->tx_new[ring] = entry;
	if (FUNC3(cp, ring) <= FUNC1(cp)*(MAX_SKB_FRAGS + 1))
		FUNC12(dev);

	FUNC11(cp, tx_queued, KERN_DEBUG, dev,
		     "tx[%d] queued, slot %d, skblen %d, avail %d\n",
		     ring, entry, skb->len, FUNC3(cp, ring));
	FUNC29(entry, cp->regs + FUNC2(ring));
	FUNC24(&cp->tx_lock[ring], flags);
	return 0;
}