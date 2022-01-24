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
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct de_private {unsigned int tx_head; int /*<<< orphan*/  lock; TYPE_1__* tx_skb; int /*<<< orphan*/  pdev; struct de_desc* tx_ring; } ;
struct de_desc {void* opts1; void* addr1; void* opts2; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 int DE_TX_RING_SIZE ; 
 int DescOwn ; 
 int FirstFrag ; 
 int LastFrag ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NormalTxPoll ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RingEnd ; 
 unsigned int FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  TxPoll ; 
 int TxSwInt ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct de_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct de_private*,int /*<<< orphan*/ ,struct net_device*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static netdev_tx_t FUNC11 (struct sk_buff *skb,
					struct net_device *dev)
{
	struct de_private *de = FUNC4(dev);
	unsigned int entry, tx_free;
	u32 mapping, len, flags = FirstFrag | LastFrag;
	struct de_desc *txd;

	FUNC8(&de->lock);

	tx_free = FUNC1(de);
	if (tx_free == 0) {
		FUNC6(dev);
		FUNC9(&de->lock);
		return NETDEV_TX_BUSY;
	}
	tx_free--;

	entry = de->tx_head;

	txd = &de->tx_ring[entry];

	len = skb->len;
	mapping = FUNC7(de->pdev, skb->data, len, PCI_DMA_TODEVICE);
	if (entry == (DE_TX_RING_SIZE - 1))
		flags |= RingEnd;
	if (!tx_free || (tx_free == (DE_TX_RING_SIZE / 2)))
		flags |= TxSwInt;
	flags |= len;
	txd->opts2 = FUNC2(flags);
	txd->addr1 = FUNC2(mapping);

	de->tx_skb[entry].skb = skb;
	de->tx_skb[entry].mapping = mapping;
	FUNC10();

	txd->opts1 = FUNC2(DescOwn);
	FUNC10();

	de->tx_head = FUNC0(entry);
	FUNC5(de, tx_queued, dev, "tx queued, slot %d, skblen %d\n",
		  entry, skb->len);

	if (tx_free == 0)
		FUNC6(dev);

	FUNC9(&de->lock);

	/* Trigger an immediate transmit demand. */
	FUNC3(TxPoll, NormalTxPoll);

	return NETDEV_TX_OK;
}