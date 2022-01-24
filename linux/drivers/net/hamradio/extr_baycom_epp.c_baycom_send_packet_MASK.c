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
struct sk_buff {scalar_t__ protocol; scalar_t__* data; int len; } ;
struct net_device {int dummy; } ;
struct baycom_state {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int HDLCDRV_MAXFLEN ; 
 int NETDEV_TX_OK ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct baycom_state*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct baycom_state* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	struct baycom_state *bc = FUNC4(dev);

	if (skb->protocol == FUNC3(ETH_P_IP))
		return FUNC0(skb);

	if (skb->data[0] != 0) {
		FUNC2(bc, skb->data, skb->len);
		FUNC1(skb);
		return NETDEV_TX_OK;
	}
	if (bc->skb) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}
	/* strip KISS byte */
	if (skb->len >= HDLCDRV_MAXFLEN+1 || skb->len < 3) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}
	FUNC5(dev);
	bc->skb = skb;
	return NETDEV_TX_OK;
}