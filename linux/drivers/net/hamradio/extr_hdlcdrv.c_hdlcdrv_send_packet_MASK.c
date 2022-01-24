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
struct sk_buff {scalar_t__ protocol; scalar_t__* data; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct hdlcdrv_state {struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdlcdrv_state*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct hdlcdrv_state* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb,
				       struct net_device *dev)
{
	struct hdlcdrv_state *sm = FUNC4(dev);

	if (skb->protocol == FUNC3(ETH_P_IP))
		return FUNC0(skb);

	if (skb->data[0] != 0) {
		FUNC2(sm, skb->data, skb->len);
		FUNC1(skb);
		return NETDEV_TX_OK;
	}
	if (sm->skb) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}
	FUNC5(dev);
	sm->skb = skb;
	return NETDEV_TX_OK;
}