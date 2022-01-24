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
struct net_device {int flags; } ;
struct de_private {unsigned int tx_head; struct de_desc* tx_ring; int /*<<< orphan*/  setup_frame; int /*<<< orphan*/  pdev; TYPE_1__* tx_skb; } ;
struct de_desc {void* opts1; void* addr1; void* opts2; } ;
struct TYPE_2__ {int mapping; int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int AcceptAllMulticast ; 
 int AcceptAllPhys ; 
 int /*<<< orphan*/  DE_DUMMY_SKB ; 
 int /*<<< orphan*/  DE_SETUP_SKB ; 
 int DE_TX_RING_SIZE ; 
 int DescOwn ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MacMode ; 
 void* FUNC0 (unsigned int) ; 
 int NormalTxPoll ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RingEnd ; 
 int SetupFrame ; 
 scalar_t__ FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  TxPoll ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct net_device*) ; 
 struct de_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12 (struct net_device *dev)
{
	struct de_private *de = FUNC8(dev);
	u32 macmode;
	unsigned int entry;
	u32 mapping;
	struct de_desc *txd;
	struct de_desc *dummy_txd = NULL;

	macmode = FUNC5(MacMode) & ~(AcceptAllMulticast | AcceptAllPhys);

	if (dev->flags & IFF_PROMISC) {	/* Set promiscuous. */
		macmode |= AcceptAllMulticast | AcceptAllPhys;
		goto out;
	}

	if ((FUNC7(dev) > 1000) || (dev->flags & IFF_ALLMULTI)) {
		/* Too many to filter well -- accept all multicasts. */
		macmode |= AcceptAllMulticast;
		goto out;
	}

	/* Note that only the low-address shortword of setup_frame is valid!
	   The values are doubled for big-endian architectures. */
	if (FUNC7(dev) > 14)	/* Must use a multicast hash table. */
		FUNC2 (de->setup_frame, dev);
	else
		FUNC3 (de->setup_frame, dev);

	/*
	 * Now add this frame to the Tx list.
	 */

	entry = de->tx_head;

	/* Avoid a chip errata by prefixing a dummy entry. */
	if (entry != 0) {
		de->tx_skb[entry].skb = DE_DUMMY_SKB;

		dummy_txd = &de->tx_ring[entry];
		dummy_txd->opts2 = (entry == (DE_TX_RING_SIZE - 1)) ?
				   FUNC4(RingEnd) : 0;
		dummy_txd->addr1 = 0;

		/* Must set DescOwned later to avoid race with chip */

		entry = FUNC0(entry);
	}

	de->tx_skb[entry].skb = DE_SETUP_SKB;
	de->tx_skb[entry].mapping = mapping =
	    FUNC10 (de->pdev, de->setup_frame,
			    sizeof (de->setup_frame), PCI_DMA_TODEVICE);

	/* Put the setup frame on the Tx list. */
	txd = &de->tx_ring[entry];
	if (entry == (DE_TX_RING_SIZE - 1))
		txd->opts2 = FUNC4(SetupFrame | RingEnd | sizeof (de->setup_frame));
	else
		txd->opts2 = FUNC4(SetupFrame | sizeof (de->setup_frame));
	txd->addr1 = FUNC4(mapping);
	FUNC11();

	txd->opts1 = FUNC4(DescOwn);
	FUNC11();

	if (dummy_txd) {
		dummy_txd->opts1 = FUNC4(DescOwn);
		FUNC11();
	}

	de->tx_head = FUNC0(entry);

	if (FUNC1(de) == 0)
		FUNC9(dev);

	/* Trigger an immediate transmit demand. */
	FUNC6(TxPoll, NormalTxPoll);

out:
	if (macmode != FUNC5(MacMode))
		FUNC6(MacMode, macmode);
}