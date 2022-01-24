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
struct sk_buff {int dummy; } ;
struct macvlan_dev {scalar_t__ netpoll; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct sk_buff*) ; 

__attribute__((used)) static inline netdev_tx_t FUNC2(struct macvlan_dev *vlan, struct sk_buff *skb)
{
#ifdef CONFIG_NET_POLL_CONTROLLER
	if (vlan->netpoll)
		netpoll_send_skb(vlan->netpoll, skb);
#else
	FUNC0();
#endif
	return NETDEV_TX_OK;
}