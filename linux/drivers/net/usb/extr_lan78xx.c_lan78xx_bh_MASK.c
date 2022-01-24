#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct skb_data {int state; int /*<<< orphan*/  urb; } ;
struct sk_buff {scalar_t__ cb; } ;
struct lan78xx_net {int delta; int /*<<< orphan*/  flags; int /*<<< orphan*/  delay; int /*<<< orphan*/  txq_pend; int /*<<< orphan*/  stat_monitor; int /*<<< orphan*/  net; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_HALT ; 
 scalar_t__ STAT_UPDATE_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
#define  rx_cleanup 130 
#define  rx_done 129 
 int /*<<< orphan*/  FUNC7 (struct lan78xx_net*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
#define  tx_done 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(unsigned long param)
{
	struct lan78xx_net *dev = (struct lan78xx_net *)param;
	struct sk_buff *skb;
	struct skb_data *entry;

	while ((skb = FUNC8(&dev->done))) {
		entry = (struct skb_data *)(skb->cb);
		switch (entry->state) {
		case rx_done:
			entry->state = rx_cleanup;
			FUNC7(dev, skb);
			continue;
		case tx_done:
			FUNC12(entry->urb);
			FUNC0(skb);
			continue;
		case rx_cleanup:
			FUNC12(entry->urb);
			FUNC0(skb);
			continue;
		default:
			FUNC4(dev->net, "skb state %d\n", entry->state);
			return;
		}
	}

	if (FUNC5(dev->net) && FUNC6(dev->net)) {
		/* reset update timer delta */
		if (FUNC11(&dev->stat_monitor) && (dev->delta != 1)) {
			dev->delta = 1;
			FUNC3(&dev->stat_monitor,
				  jiffies + STAT_UPDATE_TIMER);
		}

		if (!FUNC9(&dev->txq_pend))
			FUNC2(dev);

		if (!FUNC11(&dev->delay) &&
		    !FUNC10(EVENT_RX_HALT, &dev->flags))
			FUNC1(dev);
	}
}