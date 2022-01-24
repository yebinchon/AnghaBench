#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; } ;
struct b43legacy_dmaring {int stopped; int /*<<< orphan*/  index; int /*<<< orphan*/  tx; } ;
struct TYPE_3__ {int* tx_queue_stopped; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_DBG_DMAVERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOKEY ; 
 int ENOSPC ; 
 scalar_t__ SLOTS_PER_PACKET ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct b43legacy_dmaring*,struct sk_buff**) ; 
 scalar_t__ FUNC7 (struct b43legacy_dmaring*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 struct b43legacy_dmaring* FUNC9 (struct b43legacy_wldev*,unsigned int) ; 
 scalar_t__ FUNC10 (struct b43legacy_dmaring*) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct b43legacy_wldev *dev,
		     struct sk_buff *skb)
{
	struct b43legacy_dmaring *ring;
	int err = 0;

	ring = FUNC9(dev, FUNC11(skb));
	FUNC0(!ring->tx);

	if (FUNC12(ring->stopped)) {
		/* We get here only because of a bug in mac80211.
		 * Because of a race, one packet may be queued after
		 * the queue is stopped, thus we got called when we shouldn't.
		 * For now, just refuse the transmit. */
		if (FUNC2(dev, B43legacy_DBG_DMAVERBOSE))
			FUNC4(dev->wl, "Packet after queue stopped\n");
		return -ENOSPC;
	}

	if (FUNC1(FUNC7(ring) < SLOTS_PER_PACKET)) {
		/* If we get here, we have a real error with the queue
		 * full, but queues not stopped. */
		FUNC4(dev->wl, "DMA queue overflow\n");
		return -ENOSPC;
	}

	/* dma_tx_fragment might reallocate the skb, so invalidate pointers pointing
	 * into the skb data or cb now. */
	err = FUNC6(ring, &skb);
	if (FUNC12(err == -ENOKEY)) {
		/* Drop this packet, as we don't have the encryption key
		 * anymore and must not transmit it unencrypted. */
		FUNC5(skb);
		return 0;
	}
	if (FUNC12(err)) {
		FUNC4(dev->wl, "DMA tx mapping failure\n");
		return err;
	}
	if ((FUNC7(ring) < SLOTS_PER_PACKET) ||
	    FUNC10(ring)) {
		/* This TX ring is full. */
		unsigned int skb_mapping = FUNC11(skb);
		FUNC8(dev->wl->hw, skb_mapping);
		dev->wl->tx_queue_stopped[skb_mapping] = 1;
		ring->stopped = true;
		if (FUNC2(dev, B43legacy_DBG_DMAVERBOSE))
			FUNC3(dev->wl, "Stopped TX ring %d\n",
			       ring->index);
	}
	return err;
}