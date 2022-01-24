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
struct tap_queue {int flags; int /*<<< orphan*/  sk; int /*<<< orphan*/  ring; } ;
struct tap_dev {int tap_features; int /*<<< orphan*/  (* count_rx_dropped ) (struct tap_dev*) ;} ;
struct sk_buff {scalar_t__ ip_summed; struct sk_buff* next; struct net_device* dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;
typedef  int netdev_features_t ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EPOLLIN ; 
 int EPOLLRDBAND ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int IFF_VNET_HDR ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETIF_F_CSUM_MASK ; 
 int /*<<< orphan*/  RX_HANDLER_CONSUMED ; 
 int /*<<< orphan*/  RX_HANDLER_PASS ; 
 int TAP_FEATURES ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tap_dev*) ; 
 struct tap_dev* FUNC11 (struct net_device*) ; 
 struct tap_queue* FUNC12 (struct tap_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

rx_handler_result_t FUNC14(struct sk_buff **pskb)
{
	struct sk_buff *skb = *pskb;
	struct net_device *dev = skb->dev;
	struct tap_dev *tap;
	struct tap_queue *q;
	netdev_features_t features = TAP_FEATURES;

	tap = FUNC11(dev);
	if (!tap)
		return RX_HANDLER_PASS;

	q = FUNC12(tap, skb);
	if (!q)
		return RX_HANDLER_PASS;

	FUNC9(skb, ETH_HLEN);

	/* Apply the forward feature mask so that we perform segmentation
	 * according to users wishes.  This only works if VNET_HDR is
	 * enabled.
	 */
	if (q->flags & IFF_VNET_HDR)
		features |= tap->tap_features;
	if (FUNC5(skb, features)) {
		struct sk_buff *segs = FUNC1(skb, features, false);

		if (FUNC0(segs))
			goto drop;

		if (!segs) {
			if (FUNC6(&q->ring, skb))
				goto drop;
			goto wake_up;
		}

		FUNC2(skb);
		while (segs) {
			struct sk_buff *nskb = segs->next;

			segs->next = NULL;
			if (FUNC6(&q->ring, segs)) {
				FUNC3(segs);
				FUNC4(nskb);
				break;
			}
			segs = nskb;
		}
	} else {
		/* If we receive a partial checksum and the tap side
		 * doesn't support checksum offload, compute the checksum.
		 * Note: it doesn't matter which checksum feature to
		 *	  check, we either support them all or none.
		 */
		if (skb->ip_summed == CHECKSUM_PARTIAL &&
		    !(features & NETIF_F_CSUM_MASK) &&
		    FUNC8(skb))
			goto drop;
		if (FUNC6(&q->ring, skb))
			goto drop;
	}

wake_up:
	FUNC13(FUNC7(&q->sk), EPOLLIN | EPOLLRDNORM | EPOLLRDBAND);
	return RX_HANDLER_CONSUMED;

drop:
	/* Count errors/drops only here, thus don't care about args. */
	if (tap->count_rx_dropped)
		tap->count_rx_dropped(tap);
	FUNC3(skb);
	return RX_HANDLER_CONSUMED;
}