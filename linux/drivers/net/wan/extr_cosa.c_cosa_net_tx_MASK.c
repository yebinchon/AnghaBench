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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct channel_data {struct sk_buff* tx_skb; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct channel_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct channel_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC3(struct sk_buff *skb,
				     struct net_device *dev)
{
	struct channel_data *chan = FUNC1(dev);

	FUNC2(dev);

	chan->tx_skb = skb;
	FUNC0(chan, skb->data, skb->len);
	return NETDEV_TX_OK;
}