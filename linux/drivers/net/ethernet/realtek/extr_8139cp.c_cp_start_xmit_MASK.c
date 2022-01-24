#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ ip_summed; int len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ protocol; } ;
struct cp_private {unsigned int tx_head; int* tx_opts; TYPE_4__* dev; int /*<<< orphan*/  lock; struct cp_desc* tx_ring; struct sk_buff** tx_skb; TYPE_2__* pdev; } ;
struct cp_desc {void* opts1; void* addr; void* opts2; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  void* __le32 ;
struct TYPE_5__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;
struct TYPE_7__ {int nr_frags; int gso_size; int /*<<< orphan*/ * frags; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int CP_TX_RING_SIZE ; 
 int DescOwn ; 
 int FirstFrag ; 
 int IPCS ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int LargeSend ; 
 int LastFrag ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int MSSMask ; 
 int MSSShift ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NormalTxPoll ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RingEnd ; 
 int TCPCS ; 
 scalar_t__ FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  TxPoll ; 
 int UDPCS ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*) ; 
 struct cp_private* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct cp_private*,int /*<<< orphan*/ ,TYPE_4__*,char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 
 int FUNC18 (int /*<<< orphan*/  const*) ; 
 int FUNC19 (struct sk_buff*) ; 
 TYPE_3__* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC23 (struct cp_private*,struct sk_buff*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 () ; 

__attribute__((used)) static netdev_tx_t FUNC25 (struct sk_buff *skb,
					struct net_device *dev)
{
	struct cp_private *cp = FUNC13(dev);
	unsigned entry;
	u32 eor, opts1;
	unsigned long intr_flags;
	__le32 opts2;
	int mss = 0;

	FUNC21(&cp->lock, intr_flags);

	/* This is a hard error, log it. */
	if (FUNC1(cp) <= (FUNC20(skb)->nr_frags + 1)) {
		FUNC16(dev);
		FUNC22(&cp->lock, intr_flags);
		FUNC12(dev, "BUG! Tx Ring full when queue awake!\n");
		return NETDEV_TX_BUSY;
	}

	entry = cp->tx_head;
	eor = (entry == (CP_TX_RING_SIZE - 1)) ? RingEnd : 0;
	mss = FUNC20(skb)->gso_size;

	if (mss > MSSMask) {
		FUNC11(dev, "Net bug: GSO size %d too large for 8139CP\n",
				 mss);
		goto out_dma_error;
	}

	opts2 = FUNC4(FUNC3(skb));
	opts1 = DescOwn;
	if (mss)
		opts1 |= LargeSend | (mss << MSSShift);
	else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		const struct iphdr *ip = FUNC10(skb);
		if (ip->protocol == IPPROTO_TCP)
			opts1 |= IPCS | TCPCS;
		else if (ip->protocol == IPPROTO_UDP)
			opts1 |= IPCS | UDPCS;
		else {
			FUNC2(1,
				  "Net bug: asked to checksum invalid Legacy IP packet\n");
			goto out_dma_error;
		}
	}

	if (FUNC20(skb)->nr_frags == 0) {
		struct cp_desc *txd = &cp->tx_ring[entry];
		u32 len;
		dma_addr_t mapping;

		len = skb->len;
		mapping = FUNC8(&cp->pdev->dev, skb->data, len, PCI_DMA_TODEVICE);
		if (FUNC9(&cp->pdev->dev, mapping))
			goto out_dma_error;

		txd->opts2 = opts2;
		txd->addr = FUNC5(mapping);
		FUNC24();

		opts1 |= eor | len | FirstFrag | LastFrag;

		txd->opts1 = FUNC4(opts1);
		FUNC24();

		cp->tx_skb[entry] = skb;
		cp->tx_opts[entry] = opts1;
		FUNC15(cp, tx_queued, cp->dev, "tx queued, slot %d, skblen %d\n",
			  entry, skb->len);
	} else {
		struct cp_desc *txd;
		u32 first_len, first_eor, ctrl;
		dma_addr_t first_mapping;
		int frag, first_entry = entry;

		/* We must give this initial chunk to the device last.
		 * Otherwise we could race with the device.
		 */
		first_eor = eor;
		first_len = FUNC19(skb);
		first_mapping = FUNC8(&cp->pdev->dev, skb->data,
					       first_len, PCI_DMA_TODEVICE);
		if (FUNC9(&cp->pdev->dev, first_mapping))
			goto out_dma_error;

		cp->tx_skb[entry] = skb;

		for (frag = 0; frag < FUNC20(skb)->nr_frags; frag++) {
			const skb_frag_t *this_frag = &FUNC20(skb)->frags[frag];
			u32 len;
			dma_addr_t mapping;

			entry = FUNC0(entry);

			len = FUNC18(this_frag);
			mapping = FUNC8(&cp->pdev->dev,
						 FUNC17(this_frag),
						 len, PCI_DMA_TODEVICE);
			if (FUNC9(&cp->pdev->dev, mapping)) {
				FUNC23(cp, skb, first_entry, entry);
				goto out_dma_error;
			}

			eor = (entry == (CP_TX_RING_SIZE - 1)) ? RingEnd : 0;

			ctrl = opts1 | eor | len;

			if (frag == FUNC20(skb)->nr_frags - 1)
				ctrl |= LastFrag;

			txd = &cp->tx_ring[entry];
			txd->opts2 = opts2;
			txd->addr = FUNC5(mapping);
			FUNC24();

			txd->opts1 = FUNC4(ctrl);
			FUNC24();

			cp->tx_opts[entry] = ctrl;
			cp->tx_skb[entry] = skb;
		}

		txd = &cp->tx_ring[first_entry];
		txd->opts2 = opts2;
		txd->addr = FUNC5(first_mapping);
		FUNC24();

		ctrl = opts1 | first_eor | first_len | FirstFrag;
		txd->opts1 = FUNC4(ctrl);
		FUNC24();

		cp->tx_opts[first_entry] = ctrl;
		FUNC15(cp, tx_queued, cp->dev, "tx queued, slots %d-%d, skblen %d\n",
			  first_entry, entry, skb->len);
	}
	cp->tx_head = FUNC0(entry);

	FUNC14(dev, skb->len);
	if (FUNC1(cp) <= (MAX_SKB_FRAGS + 1))
		FUNC16(dev);

out_unlock:
	FUNC22(&cp->lock, intr_flags);

	FUNC6(TxPoll, NormalTxPoll);

	return NETDEV_TX_OK;
out_dma_error:
	FUNC7(skb);
	cp->dev->stats.tx_dropped++;
	goto out_unlock;
}