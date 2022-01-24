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
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
				      struct net_device *dev)
{
	int err;

	/*
	 * Just to be *really* sure not to send anything if the interface
	 * is down, the ethernet device may have gone.
	 */
	if (!FUNC4(dev))
		goto drop;

	switch (skb->data[0]) {
	case X25_IFACE_DATA:
		break;
	case X25_IFACE_CONNECT:
		if ((err = FUNC1(dev)) != LAPB_OK)
			FUNC5("lapb_connect_request error: %d\n", err);
		goto drop;
	case X25_IFACE_DISCONNECT:
		if ((err = FUNC3(dev)) != LAPB_OK)
			FUNC5("lapb_disconnect_request err: %d\n", err);
		/* Fall thru */
	default:
		goto drop;
	}

	FUNC6(skb, 1);

	if ((err = FUNC2(dev, skb)) != LAPB_OK) {
		FUNC5("lapb_data_request error - %d\n", err);
		goto drop;
	}
out:
	return NETDEV_TX_OK;
drop:
	FUNC0(skb);
	goto out;
}