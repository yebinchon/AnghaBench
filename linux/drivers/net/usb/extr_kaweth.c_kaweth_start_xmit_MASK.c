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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct kaweth_device {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  tx_urb; scalar_t__ end; int /*<<< orphan*/  dev; struct sk_buff* tx_skb; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/ * FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kaweth_device*) ; 
 int /*<<< orphan*/  kaweth_usb_transmit_complete ; 
 struct kaweth_device* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kaweth_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb,
					   struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC7(net);
	__le16 *private_header;

	int res;

	FUNC11(&kaweth->device_lock);

	FUNC6(kaweth);
	FUNC9(net);
	if (FUNC0(kaweth->status)) {
		goto skip;
	}

	/* We now decide whether we can put our special header into the sk_buff */
	if (FUNC10(skb, 2)) {
		net->stats.tx_errors++;
		FUNC8(net);
		FUNC12(&kaweth->device_lock);
		FUNC3(skb);
		return NETDEV_TX_OK;
	}

	private_header = FUNC1(skb, 2);
	*private_header = FUNC2(skb->len-2);
	kaweth->tx_skb = skb;

	FUNC13(kaweth->tx_urb,
		      kaweth->dev,
		      FUNC14(kaweth->dev, 2),
		      private_header,
		      skb->len,
		      kaweth_usb_transmit_complete,
		      kaweth);
	kaweth->end = 0;

	if((res = FUNC15(kaweth->tx_urb, GFP_ATOMIC)))
	{
		FUNC5(&net->dev, "kaweth failed tx_urb %d\n", res);
skip:
		net->stats.tx_errors++;

		FUNC8(net);
		FUNC4(skb);
	}
	else
	{
		net->stats.tx_packets++;
		net->stats.tx_bytes += skb->len;
	}

	FUNC12(&kaweth->device_lock);

	return NETDEV_TX_OK;
}