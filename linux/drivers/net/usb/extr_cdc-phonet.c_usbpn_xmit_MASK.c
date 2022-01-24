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
struct usbpn_dev {scalar_t__ tx_queue; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_pipe; int /*<<< orphan*/  usb; } ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {scalar_t__ tx_queue_len; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PHONET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct usbpn_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_complete ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct usbpn_dev *pnd = FUNC2(dev);
	struct urb *req = NULL;
	unsigned long flags;
	int err;

	if (skb->protocol != FUNC1(ETH_P_PHONET))
		goto drop;

	req = FUNC6(0, GFP_ATOMIC);
	if (!req)
		goto drop;
	FUNC7(req, pnd->usb, pnd->tx_pipe, skb->data, skb->len,
				tx_complete, skb);
	req->transfer_flags = URB_ZERO_PACKET;
	err = FUNC9(req, GFP_ATOMIC);
	if (err) {
		FUNC8(req);
		goto drop;
	}

	FUNC4(&pnd->tx_lock, flags);
	pnd->tx_queue++;
	if (pnd->tx_queue >= dev->tx_queue_len)
		FUNC3(dev);
	FUNC5(&pnd->tx_lock, flags);
	return NETDEV_TX_OK;

drop:
	FUNC0(skb);
	dev->stats.tx_dropped++;
	return NETDEV_TX_OK;
}