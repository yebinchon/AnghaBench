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
struct net_device {int dummy; } ;
struct enc28j60_net {int /*<<< orphan*/  tx_work; struct sk_buff* tx_skb; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct enc28j60_net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC3(struct sk_buff *skb,
					struct net_device *dev)
{
	struct enc28j60_net *priv = FUNC0(dev);

	/* If some error occurs while trying to transmit this
	 * packet, you should return '1' from this function.
	 * In such a case you _may not_ do anything to the
	 * SKB, it is still owned by the network queueing
	 * layer when an error is returned. This means you
	 * may not modify any SKB fields, you may not free
	 * the SKB, etc.
	 */
	FUNC1(dev);

	/* Remember the skb for deferred processing */
	priv->tx_skb = skb;
	FUNC2(&priv->tx_work);

	return NETDEV_TX_OK;
}