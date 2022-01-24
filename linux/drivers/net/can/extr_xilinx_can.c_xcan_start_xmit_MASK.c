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
struct TYPE_2__ {int flags; } ;
struct xcan_priv {TYPE_1__ devtype; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int XCAN_FLAG_TX_MAILBOXES ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct xcan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct sk_buff*,struct net_device*) ; 
 int FUNC5 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *ndev)
{
	struct xcan_priv *priv = FUNC2(ndev);
	int ret;

	if (FUNC0(ndev, skb))
		return NETDEV_TX_OK;

	if (priv->devtype.flags & XCAN_FLAG_TX_MAILBOXES)
		ret = FUNC5(skb, ndev);
	else
		ret = FUNC4(skb, ndev);

	if (ret < 0) {
		FUNC1(ndev, "BUG!, TX full when queue awake!\n");
		FUNC3(ndev);
		return NETDEV_TX_BUSY;
	}

	return NETDEV_TX_OK;
}