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
 int LAPB_CONNECTED ; 
 int LAPB_NOTCONNECTED ; 
 int LAPB_OK ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
#define  X25_IFACE_CONNECT 130 
#define  X25_IFACE_DATA 129 
#define  X25_IFACE_DISCONNECT 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct sk_buff*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	int result;


	/* X.25 to LAPB */
	switch (skb->data[0]) {
	case X25_IFACE_DATA:	/* Data to be transmitted */
		FUNC5(skb, 1);
		if ((result = FUNC2(dev, skb)) != LAPB_OK)
			FUNC0(skb);
		return NETDEV_TX_OK;

	case X25_IFACE_CONNECT:
		if ((result = FUNC1(dev))!= LAPB_OK) {
			if (result == LAPB_CONNECTED)
				/* Send connect confirm. msg to level 3 */
				FUNC6(dev, 0);
			else
				FUNC4(dev, "LAPB connect request failed, error code = %i\n",
					   result);
		}
		break;

	case X25_IFACE_DISCONNECT:
		if ((result = FUNC3(dev)) != LAPB_OK) {
			if (result == LAPB_NOTCONNECTED)
				/* Send disconnect confirm. msg to level 3 */
				FUNC7(dev, 0);
			else
				FUNC4(dev, "LAPB disconnect request failed, error code = %i\n",
					   result);
		}
		break;

	default:		/* to be defined */
		break;
	}

	FUNC0(skb);
	return NETDEV_TX_OK;
}