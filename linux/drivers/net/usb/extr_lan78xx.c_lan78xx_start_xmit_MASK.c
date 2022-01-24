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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lan78xx_net {int /*<<< orphan*/  bh; TYPE_3__* net; int /*<<< orphan*/  txq_pend; TYPE_1__* udev; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_5__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {scalar_t__ speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ USB_SPEED_SUPER ; 
 struct sk_buff* FUNC0 (struct lan78xx_net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct lan78xx_net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static netdev_tx_t
FUNC8(struct sk_buff *skb, struct net_device *net)
{
	struct lan78xx_net *dev = FUNC1(net);
	struct sk_buff *skb2 = NULL;

	if (skb) {
		FUNC6(skb);
		skb2 = FUNC0(dev, skb, GFP_ATOMIC);
	}

	if (skb2) {
		FUNC5(&dev->txq_pend, skb2);

		/* throttle TX patch at slower than SUPER SPEED USB */
		if ((dev->udev->speed < USB_SPEED_SUPER) &&
		    (FUNC4(&dev->txq_pend) > 10))
			FUNC3(net);
	} else {
		FUNC2(dev, tx_err, dev->net,
			  "lan78xx_tx_prep return NULL\n");
		dev->net->stats.tx_errors++;
		dev->net->stats.tx_dropped++;
	}

	FUNC7(&dev->bh);

	return NETDEV_TX_OK;
}