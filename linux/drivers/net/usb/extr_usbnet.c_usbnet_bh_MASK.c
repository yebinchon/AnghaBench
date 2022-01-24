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
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_5__ {int qlen; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct usbnet {int /*<<< orphan*/  net; TYPE_2__ txq; int /*<<< orphan*/  bh; TYPE_1__ rxq; int /*<<< orphan*/  flags; int /*<<< orphan*/  delay; int /*<<< orphan*/  wait; TYPE_4__ done; } ;
struct timer_list {int dummy; } ;
struct skb_data {int state; TYPE_3__* urb; } ;
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_7__ {int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOLINK ; 
 int /*<<< orphan*/  EVENT_RX_HALT ; 
 int /*<<< orphan*/  EVENT_RX_KILL ; 
 int /*<<< orphan*/  EVENT_RX_PAUSED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct usbnet*) ; 
 scalar_t__ FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  delay ; 
 struct usbnet* dev ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct usbnet* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usbnet*,int /*<<< orphan*/ ) ; 
#define  rx_cleanup 130 
#define  rx_done 129 
 int /*<<< orphan*/  FUNC13 (struct usbnet*,struct sk_buff*) ; 
 struct sk_buff* FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
#define  tx_done 128 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21 (struct timer_list *t)
{
	struct usbnet		*dev = FUNC4(dev, t, delay);
	struct sk_buff		*skb;
	struct skb_data		*entry;

	while ((skb = FUNC14 (&dev->done))) {
		entry = (struct skb_data *) skb->cb;
		switch (entry->state) {
		case rx_done:
			entry->state = rx_cleanup;
			FUNC13 (dev, skb);
			continue;
		case tx_done:
			FUNC5(entry->urb->sg);
			/* fall through */
		case rx_cleanup:
			FUNC18 (entry->urb);
			FUNC3 (skb);
			continue;
		default:
			FUNC6(dev->net, "bogus skb state %d\n", entry->state);
		}
	}

	/* restart RX again after disabling due to high error rate */
	FUNC2(EVENT_RX_KILL, &dev->flags);

	/* waiting for all pending urbs to complete?
	 * only then can we forgo submitting anew
	 */
	if (FUNC19(&dev->wait)) {
		if (dev->txq.qlen + dev->rxq.qlen + dev->done.qlen == 0)
			FUNC20(&dev->wait);

	// or are we maybe short a few urbs?
	} else if (FUNC10 (dev->net) &&
		   FUNC9 (dev->net) &&
		   FUNC7(dev->net) &&
		   !FUNC17(&dev->delay) &&
		   !FUNC16(EVENT_RX_PAUSED, &dev->flags) &&
		   !FUNC16(EVENT_RX_HALT, &dev->flags)) {
		int	temp = dev->rxq.qlen;

		if (temp < FUNC0(dev)) {
			if (FUNC12(dev, GFP_ATOMIC) == -ENOLINK)
				return;
			if (temp != dev->rxq.qlen)
				FUNC8(dev, link, dev->net,
					  "rxqlen %d --> %d\n",
					  temp, dev->rxq.qlen);
			if (dev->rxq.qlen < FUNC0(dev))
				FUNC15 (&dev->bh);
		}
		if (dev->txq.qlen < FUNC1 (dev))
			FUNC11 (dev->net);
	}
}