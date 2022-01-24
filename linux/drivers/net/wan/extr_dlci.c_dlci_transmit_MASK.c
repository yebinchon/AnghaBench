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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct dlci_local {int /*<<< orphan*/  slave; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct dlci_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,struct netdev_queue*,int) ; 
 struct netdev_queue* FUNC2 (struct net_device*,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC3(struct sk_buff *skb, struct net_device *dev)
{
	struct dlci_local *dlp = FUNC0(dev);

	if (skb) {
		struct netdev_queue *txq = FUNC2(dev, skb);
		FUNC1(skb, dlp->slave, txq, false);
	}
	return NETDEV_TX_OK;
}