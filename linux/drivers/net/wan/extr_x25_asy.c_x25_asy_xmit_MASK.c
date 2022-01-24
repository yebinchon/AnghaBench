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
struct x25_asy {int /*<<< orphan*/  dev; } ;
struct sk_buff {int* data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int LAPB_OK ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
#define  X25_IFACE_CONNECT 130 
#define  X25_IFACE_DATA 129 
#define  X25_IFACE_DISCONNECT 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct sk_buff*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 struct x25_asy* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
				      struct net_device *dev)
{
	struct x25_asy *sl = FUNC5(dev);
	int err;

	if (!FUNC6(sl->dev)) {
		FUNC4(dev, "xmit call when iface is down\n");
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	switch (skb->data[0]) {
	case X25_IFACE_DATA:
		break;
	case X25_IFACE_CONNECT: /* Connection request .. do nothing */
		err = FUNC1(dev);
		if (err != LAPB_OK)
			FUNC4(dev, "lapb_connect_request error: %d\n",
				   err);
		FUNC0(skb);
		return NETDEV_TX_OK;
	case X25_IFACE_DISCONNECT: /* do nothing - hang up ?? */
		err = FUNC3(dev);
		if (err != LAPB_OK)
			FUNC4(dev, "lapb_disconnect_request error: %d\n",
				   err);
		/* fall through */
	default:
		FUNC0(skb);
		return NETDEV_TX_OK;
	}
	FUNC7(skb, 1);	/* Remove control byte */
	/*
	 * If we are busy already- too bad.  We ought to be able
	 * to queue things at this point, to allow for a little
	 * frame buffer.  Oh well...
	 * -----------------------------------------------------
	 * I hate queues in X.25 driver. May be it's efficient,
	 * but for me latency is more important. ;)
	 * So, no queues !
	 *        14 Oct 1994  Dmitry Gorodchanin.
	 */

	err = FUNC2(dev, skb);
	if (err != LAPB_OK) {
		FUNC4(dev, "lapb_data_request error: %d\n", err);
		FUNC0(skb);
		return NETDEV_TX_OK;
	}
	return NETDEV_TX_OK;
}