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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct cas_tx_desc {int /*<<< orphan*/  control; int /*<<< orphan*/  buffer; } ;
struct cas {int* tx_old; int /*<<< orphan*/ * tx_lock; int /*<<< orphan*/ * stat_lock; TYPE_2__* net_stats; TYPE_1__** tx_tiny_use; int /*<<< orphan*/  pdev; struct net_device* dev; struct sk_buff*** tx_skbs; struct cas_tx_desc** init_txds; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int nr_frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_4__ {int nbufs; scalar_t__ used; } ;

/* Variables and functions */
 int FUNC0 (struct cas*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int FUNC2 (struct cas*,int) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  TX_DESC_BUFLEN ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_done ; 

__attribute__((used)) static inline void FUNC14(struct cas *cp, int ring, int limit)
{
	struct cas_tx_desc *txds;
	struct sk_buff **skbs;
	struct net_device *dev = cp->dev;
	int entry, count;

	FUNC12(&cp->tx_lock[ring]);
	txds = cp->init_txds[ring];
	skbs = cp->tx_skbs[ring];
	entry = cp->tx_old[ring];

	count = FUNC3(ring, entry, limit);
	while (entry != limit) {
		struct sk_buff *skb = skbs[entry];
		dma_addr_t daddr;
		u32 dlen;
		int frag;

		if (!skb) {
			/* this should never occur */
			entry = FUNC4(ring, entry);
			continue;
		}

		/* however, we might get only a partial skb release. */
		count -= FUNC11(skb)->nr_frags +
			+ cp->tx_tiny_use[ring][entry].nbufs + 1;
		if (count < 0)
			break;

		FUNC7(cp, tx_done, KERN_DEBUG, cp->dev,
			     "tx[%d] done, slot %d\n", ring, entry);

		skbs[entry] = NULL;
		cp->tx_tiny_use[ring][entry].nbufs = 0;

		for (frag = 0; frag <= FUNC11(skb)->nr_frags; frag++) {
			struct cas_tx_desc *txd = txds + entry;

			daddr = FUNC6(txd->buffer);
			dlen = FUNC1(TX_DESC_BUFLEN,
				       FUNC6(txd->control));
			FUNC10(cp->pdev, daddr, dlen,
				       PCI_DMA_TODEVICE);
			entry = FUNC4(ring, entry);

			/* tiny buffer may follow */
			if (cp->tx_tiny_use[ring][entry].used) {
				cp->tx_tiny_use[ring][entry].used = 0;
				entry = FUNC4(ring, entry);
			}
		}

		FUNC12(&cp->stat_lock[ring]);
		cp->net_stats[ring].tx_packets++;
		cp->net_stats[ring].tx_bytes += skb->len;
		FUNC13(&cp->stat_lock[ring]);
		FUNC5(skb);
	}
	cp->tx_old[ring] = entry;

	/* this is wrong for multiple tx rings. the net device needs
	 * multiple queues for this to do the right thing.  we wait
	 * for 2*packets to be available when using tiny buffers
	 */
	if (FUNC8(dev) &&
	    (FUNC2(cp, ring) > FUNC0(cp)*(MAX_SKB_FRAGS + 1)))
		FUNC9(dev);
	FUNC13(&cp->tx_lock[ring]);
}