#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_5__ {struct b43_pio_txqueue* tx_queue_mcast; } ;
struct b43_wldev {TYPE_2__* wl; TYPE_1__ pio; } ;
struct b43_pio_txqueue {unsigned int buffer_size; scalar_t__ free_packet_slots; unsigned int buffer_used; int stopped; int /*<<< orphan*/  queue_prio; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENOBUFS ; 
 int ENOKEY ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREDATA ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 unsigned int FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct b43_pio_txqueue*,struct sk_buff*) ; 
 unsigned int FUNC10 (int,int) ; 
 struct b43_pio_txqueue* FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct b43_wldev *dev, struct sk_buff *skb)
{
	struct b43_pio_txqueue *q;
	struct ieee80211_hdr *hdr;
	unsigned int hdrlen, total_len;
	int err = 0;
	struct ieee80211_tx_info *info = FUNC1(skb);

	hdr = (struct ieee80211_hdr *)skb->data;

	if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
		/* The multicast queue will be sent after the DTIM. */
		q = dev->pio.tx_queue_mcast;
		/* Set the frame More-Data bit. Ucode will clear it
		 * for us on the last frame. */
		hdr->frame_control |= FUNC6(IEEE80211_FCTL_MOREDATA);
	} else {
		/* Decide by priority where to put this frame. */
		q = FUNC11(dev, FUNC12(skb));
	}

	hdrlen = FUNC2(dev);
	total_len = FUNC10(skb->len + hdrlen, 4);

	if (FUNC13(total_len > q->buffer_size)) {
		err = -ENOBUFS;
		FUNC3(dev->wl, "PIO: TX packet longer than queue.\n");
		goto out;
	}
	if (FUNC13(q->free_packet_slots == 0)) {
		err = -ENOBUFS;
		FUNC5(dev->wl, "PIO: TX packet overflow.\n");
		goto out;
	}
	FUNC0(q->buffer_used > q->buffer_size);

	if (total_len > (q->buffer_size - q->buffer_used)) {
		/* Not enough memory on the queue. */
		err = -EBUSY;
		FUNC8(dev->wl->hw, FUNC12(skb));
		q->stopped = true;
		goto out;
	}

	/* Assign the queue number to the ring (if not already done before)
	 * so TX status handling can use it. The mac80211-queue to b43-queue
	 * mapping is static, so we don't need to store it per frame. */
	q->queue_prio = FUNC12(skb);

	err = FUNC9(q, skb);
	if (FUNC13(err == -ENOKEY)) {
		/* Drop this packet, as we don't have the encryption key
		 * anymore and must not transmit it unencrypted. */
		FUNC7(dev->wl->hw, skb);
		err = 0;
		goto out;
	}
	if (FUNC13(err)) {
		FUNC4(dev->wl, "PIO transmission failure\n");
		goto out;
	}

	FUNC0(q->buffer_used > q->buffer_size);
	if (((q->buffer_size - q->buffer_used) < FUNC10(2 + 2 + 6, 4)) ||
	    (q->free_packet_slots == 0)) {
		/* The queue is full. */
		FUNC8(dev->wl->hw, FUNC12(skb));
		q->stopped = true;
	}

out:
	return err;
}